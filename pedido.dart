import './cliente.dart';
import './produto.dart';
import './venda_item.dart';
import './venda.dart';

void main() {
  var cliente = Cliente();
  cliente.cpf = '08634307913';
  cliente.nome = 'Gabriel Frontorio';

  var produto1 = Produto();
  produto1.codigo = 1;
  produto1.nome = 'Mouse';
  produto1.preco = 10;

  var produto2 = Produto();
  produto2.codigo = 2;
  produto2.nome = 'Teclado';
  produto2.preco = 15;

  var produto3 = Produto();
  produto3.codigo = 3;
  produto3.nome = 'Tela';
  produto3.preco = 165;

  var vendaItem1 = VendaItem();
  vendaItem1.produto = produto1;
  vendaItem1.quantidade = 2;
  vendaItem1.preco;

  var vendaItem2 = VendaItem();
  vendaItem2.produto = produto2;
  vendaItem2.quantidade = 3;
  vendaItem2.preco;

  var vendaItem3 = VendaItem();
  vendaItem3.produto = produto3;
  vendaItem3.quantidade = 1;
  vendaItem3.preco;

  var venda = Venda();
  venda.cliente = cliente;
  List <VendaItem> itens = [vendaItem1, vendaItem2, vendaItem3];
  venda.itens = itens;

  print('Cliente: '+cliente.nome);
  venda.itens.forEach((item) {
    print('Produto : '+item.produto.nome);
  });
  print('Valor total: '+venda.valorTotal.toString());
}