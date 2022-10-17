resource local_file sample_res {
	filename = "sample.txt"
	content = " That's a sample file text created by terraform"
}

provider "google" {
	project = "my-test-project-owspio"
	region = "europe-central2"
	zone = "europe-central2-a"
}

resource google_storage_bucket "GSC1"{
	name = "pio-ows-bucket-tf"
}