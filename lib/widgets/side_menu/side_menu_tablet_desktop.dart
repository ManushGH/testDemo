import 'package:ecommerce_admin_tut/locator.dart';
import 'package:ecommerce_admin_tut/pages/jobs/jobs_page.dart';
import 'package:ecommerce_admin_tut/provider/app_provider.dart';
import 'package:ecommerce_admin_tut/rounting/route_names.dart';
import 'package:ecommerce_admin_tut/services/navigation_service.dart';
import 'package:ecommerce_admin_tut/widgets/navbar/navbar_logo.dart';
import 'package:ecommerce_admin_tut/widgets/side_menu/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideMenuTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
          color: Colors.indigo,
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.indigo.shade600],
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200], offset: Offset(3, 5), blurRadius: 17)
          ]),
      width: 250,
      child: Container(
        child: Column(
          children: [
            NavBarLogo(),
            SideMenuItemDesktop(
              icon: Icons.dashboard,
              text: 'Dashboard',
              active: appProvider.currentPage == DisplayedPage.HOME,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.HOME);
                locator<NavigationService>().navigateTo(HomeRoute);
              },
            ),
            SideMenuItemDesktop(
              icon: Icons.people,
              text: 'Users',
              active: appProvider.currentPage == DisplayedPage.USERS,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.USERS);

                locator<NavigationService>().navigateTo(UsersRoute);
              },
            ),
            SideMenuItemDesktop(
              icon: Icons.event,
              text: 'Event List',
              active: appProvider.currentPage == DisplayedPage.EVENTS,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.EVENTS);
                locator<NavigationService>().navigateTo(EventsRoute);
              },
            ),
            SideMenuItemDesktop(
              icon: Icons.local_activity,
              text: 'Activities',
              active: appProvider.currentPage == DisplayedPage.ACTIVITIES,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.ACTIVITIES);
                locator<NavigationService>().navigateTo(ActivitiesRoute);
              },
            ),
            SideMenuItemDesktop(
              icon: Icons.book,
              text: 'Job List',
              active: appProvider.currentPage == DisplayedPage.JOBS,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.JOBS);
                locator<NavigationService>().navigateTo(JobsRoute);
              },
            ),
            SideMenuItemDesktop(
              icon: Icons.school,
              text: 'Class List',
              active: appProvider.currentPage == DisplayedPage.CLASSLISTS,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.CLASSLISTS);
                locator<NavigationService>().navigateTo(ClassListsRoute);
              },
            ),
            SideMenuItemDesktop(
              icon: Icons.payment,
              text: 'Payment Account',
              active: appProvider.currentPage == DisplayedPage.PAYMENTS,
              onTap: () {
                appProvider.changeCurrentPage(DisplayedPage.PAYMENTS);
                locator<NavigationService>().navigateTo(PaymentsRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
