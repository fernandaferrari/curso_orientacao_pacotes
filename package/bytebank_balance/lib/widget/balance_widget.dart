part of '../bytebank_balance.dart';

class BytebankBalance extends StatefulWidget {
  const BytebankBalance({super.key, required this.color});
  final Color color;

  @override
  State<BytebankBalance> createState() => _BytebankBalanceState();
}

class _BytebankBalanceState extends State<BytebankBalance> {
  bool isShowingBalance = false;
  double userBalance = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Saldo",
              style: TextStyle(
                fontSize: 20,
                color: widget.color,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 16),
            IconButton(
                onPressed: () => isExibeSaldo(),
                icon: Icon(
                  (isShowingBalance) ? Icons.visibility : Icons.visibility_off,
                  color: widget.color,
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(color: widget.color, thickness: 2),
        ),
        Text(
          "Conta Corrente",
          style: TextStyle(
            color: widget.color,
            fontSize: 16,
          ),
        ),
        Text(
          (isShowingBalance)
              ? "R\$ ${userBalance.toStringAsFixed(2)}"
              : "R\$ ●●●●",
          style: TextStyle(
            color: widget.color,
            fontSize: 32,
          ),
        ),
      ],
    );
  }

  isExibeSaldo() {
    if (isShowingBalance) {
      setState(() {
        isShowingBalance = false;
      });
    } else {
      setState(() {
        isShowingBalance = true;
      });
    }
  }
}
