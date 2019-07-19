package main

import (
	elasticsearch7 "github.com/elastic/go-elasticsearch/v7"
	log "github.com/sirupsen/logrus"
)

func main() {
	es, _ := elasticsearch7.NewDefaultClient()
	log.Println(es.Info())
}
