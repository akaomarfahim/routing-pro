import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_pro/core/widgets/feature_placeholder.dart';

import '../../../../config/routing/guards/guards.dart';
import '../../../../config/routing/route_module.dart';
import '../../../../config/routing/route_spec.dart';
import '../../../../config/routing/transitions/route_transitions.dart';
import '../../../../core/constants/permissions.dart';

/// Both trees in this feature are gated on the same read permission.
const _canViewCatalog = CompositeGuard([
  AuthGuard(),
  PermissionGuard({Permissions.viewProducts}),
]);

/// ============================================================================
/// CATALOG (PRODUCTS + CATEGORIES) - BRANCH 3.
///
/// Two route trees under one tab, so they share a back stack while URLs stay
/// honest: `/products/...` and `/categories/...`, not `/catalog/products/...`.
///
/// Declaration order matters for `/products/new`: the literal is declared
/// before `:productId`, or go_router resolves it as a product whose id is
/// "new". `RouteRegistry.byLocation` ranks by literal segments for the same
/// reason.
/// ============================================================================
final class CatalogRoutes implements RouteModule {
  const CatalogRoutes();

  static const productId = 'productId';
  static const categoryId = 'categoryId';

  // ------------------------------------------------------------------ products
  static const list = RouteSpec.root('/products', name: 'products', title: 'Products', guard: _canViewCatalog);

  static const create = RouteSpec.child(
    list,
    'new',
    name: 'productNew',
    title: 'New product',
    guard: PermissionGuard({Permissions.createProduct}),
    transition: TransitionPreset.slideFromBottom,
    fullscreen: true,
  );

  static const detail = RouteSpec.child(
    list,
    ':$productId',
    name: 'productDetail',
    title: 'Product',
    transition: TransitionPreset.slideFromRight,
  );

  static const edit = RouteSpec.child(
    detail,
    'edit',
    name: 'productEdit',
    title: 'Edit product',
    guard: PermissionGuard({Permissions.updateProduct}),
    transition: TransitionPreset.slideFromRight,
  );

  // ---------------------------------------------------------------- categories
  static const categories = RouteSpec.root(
    '/categories',
    name: 'categories',
    title: 'Categories',
    guard: _canViewCatalog,
  );

  static const categoryCreate = RouteSpec.child(
    categories,
    'new',
    name: 'categoryNew',
    title: 'New category',
    guard: PermissionGuard({Permissions.createProduct}),
    transition: TransitionPreset.slideFromBottom,
    fullscreen: true,
  );

  static const categoryDetail = RouteSpec.child(
    categories,
    ':$categoryId',
    name: 'categoryDetail',
    title: 'Category',
    transition: TransitionPreset.slideFromRight,
  );

  static const categoryEdit = RouteSpec.child(
    categoryDetail,
    'edit',
    name: 'categoryEdit',
    title: 'Edit category',
    guard: PermissionGuard({Permissions.updateProduct}),
    transition: TransitionPreset.slideFromBottom,
    fullscreen: true,
  );

  @override
  List<RouteSpec> get specs => const [
    list,
    create,
    detail,
    edit,
    categories,
    categoryCreate,
    categoryDetail,
    categoryEdit,
  ];

  @override
  List<RouteBase> routes(GlobalKey<NavigatorState> rootNavigatorKey) => [
    list.route(
      builder: (context, state) => const FeaturePlaceholder(title: 'Products Screen'),
      routes: [
        // `new` BEFORE `:productId` - order decides which one wins.
        create.route(
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) =>
              const FeaturePlaceholder(title: 'New product', subtitle: 'Wire AddProductScreen here.'),
        ),
        detail.route(
          // builder: (context, state) => ProductDetailScreen(productId: state.requireParam(productId)),
          builder: (context, state) => const FeaturePlaceholder(title: 'Product details screen'),
          routes: [
            edit.route(
              builder: (context, state) =>
                  FeaturePlaceholder(title: 'Edit product', subtitle: 'Product ${state.requireParam(productId)}'),
            ),
          ],
        ),
      ],
    ),
    categories.route(
      builder: (context, state) => const FeaturePlaceholder(title: 'Category Screen'),
      routes: [
        categoryCreate.route(
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => const FeaturePlaceholder(title: 'Category Form Screen'),
        ),
        categoryDetail.route(
          builder: (context, state) => const FeaturePlaceholder(title: 'Category Details Screen'),
          // builder: (context, state) => CategoryDetailsScreen(categoryId: state.requireParam(categoryId)),
          routes: [
            categoryEdit.route(
              parentNavigatorKey: rootNavigatorKey,
              builder: (context, state) => const FeaturePlaceholder(title: 'Category Form Screen'),
            ),
          ],
        ),
      ],
    ),
  ];
}
