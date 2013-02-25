# ssl_scanner


## Installation

Add this line to your application's Gemfile:

    gem 'ssl_scanner'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ssl_scanner

## Usage

```ruby

SslScanner.scan_domain('https://www.yahoo.com')

```
Results in

```ruby
{ :subject=>'/C=US/ST=CA/L=Sunnyvale/O=Yahoo! Inc./CN=*.mail.yahoo.com', 
  :issuer=> '/C=US/O=DigiCert Inc/OU=www.digicert.com/CN=DigiCert High Assurance CA-3', 
  :serial=> '3098776753094407546654350892289265887', 
  :issued=> '2012-03-15 00:00:00 UTC', 
  :expires=>'2013-06-15 12:00:00 UTC', 
  :certificate=> ' .... '
} 
```
