---
to: src/domain/<%= Name %>/D.<%= Name %>.gateway.ts
---
import { Inject, Injectable } from '_common/IoC';
import { I<%= Name %>DTO, S<%= Name %>Transport, S<%= Name %>TransportTid } from '_system/<%= Name %>';
import { ID<%= Name %>Gateway } from '_domain/<%= Name %>/D.<%= Name %>.types';

@Injectable()
export class D<%= Name %>Gateway implements ID<%= Name %>Gateway {
  constructor(
    @Inject(S<%= Name %>TransportTid) private _transport: S<%= Name %>Transport,
  ) {}
}
