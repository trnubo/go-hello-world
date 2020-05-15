/*
Copyright © 2020 Tim Robinson <tim@attler.net>

*/
package main

import "github.com/trnubo/go-hello-world/cmd"

var (
  version = ""
  commit = ""
  date = ""
)

func main() {
	cmd.Execute()
}
