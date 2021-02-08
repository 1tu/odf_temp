---
to: src/domain/<%= Name %>/model/D.<%= Name %>.model.ts
---
import { DomainModelBase } from '_domain/_common';
import { I<%= Name %>DTO } from '_system/<%= Name %>';

export class D<%= Name %>Model extends DomainModelBase<I<%= Name %>DTO> {

}
