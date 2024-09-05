import "package:flutter/material.dart";

Widget taskbar(AppColor) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        child: Row(
          children: [
            InkWell(
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                    color: AppColor, borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              child: Container(
                width: 106,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColor,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: AppColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        height: 44,
        width: 44,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 252, 245, 1),
        ),
        child: Icon(
          Icons.notifications_outlined,
          color: AppColor,
          size: 25,
        ),
      )
    ],
  );
}

Widget searchrow(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: 5,
          child: TextField(
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              hintText: "Search",
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.grey, fontSize: 15),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey)),
        child: const ImageIcon(AssetImage("lib/images/Tune.png")),
      ),
    ],
  );
}
