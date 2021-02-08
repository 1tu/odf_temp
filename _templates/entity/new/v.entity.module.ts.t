---
to: src/view/<%= Name %>/V.<%= Name %>.module.ts
---
import { Container, IocModule } from '_common/IoC';
import { V<%= Name %>Screen, V<%= Name %>FormScreen, V<%= Name %>ListScreen } from '_view/<%= Name %>';
import { VRouterStore } from '_view/Router';

export class V<%= Name %>Module implements IocModule {
  public Configure(ioc: Container): void {
     VRouterStore.add('<%= name %>', V<%= Name %>ListScreen);
     VRouterStore.add('<%= name %>/create', V<%= Name %>FormScreen);
     VRouterStore.add('<%= name %>/:id', V<%= Name %>Screen);
     VRouterStore.add('<%= name %>/:id/edit', V<%= Name %>FormScreen);
  }
}
