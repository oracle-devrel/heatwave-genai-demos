# Quickly Generate Text Summaries for Ecommerce Product Reviews Using HeatWave GenAI

[![License: UPL](https://img.shields.io/badge/license-UPL-green)](https://img.shields.io/badge/license-UPL-green) [![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=oracle-devrel_heatwave-genai-demos)](https://sonarcloud.io/dashboard?id=oracle-devrel_heatwave-genai-demos)

> This repository contains code samples to demonstrates how to use HeatWave GenAI to summarize and/or translate text for example products reviews from an e-commerce website. With just a few steps, one can leverage HeatWave GenAI to enhance an e-commerce website with new capabilities.

## Introduction
HeatWave GenAI allows you to perform natural language queries on unstructured data using a familiar SQL and JavaScript interface. In the following code samples we can show how easy is it setup and run GenAI applications.

## Getting Started

### Prerequisites
**HeatWave-Enabled Database System**: Ensure you have a database system(version 9.1 or above) with HeatWave enabled. Refer to the [Getting Started with MySQL HeatWave on OCI]( https://www.oracle.com/developer/getting-started-with-mysql-heatwave-on-oci/) guide for setup instructions.

### Steps

To run the following steps, you need to be in the folder where this README is contained.

1. Setup the database and create the procedures. 

**Note**: this will remove the `ecommerce` database if you already have it.
```
mysql -h your_host_name -u yourusername -p < install.sql
```

Expected output:
```
-- Installation: STARTED ---

-- Dropping database if exists ---

-- Creating tables ---

-- Populating data ---

-- Creating stored procedures ---

-- Installation: DONE ---
```

2. Insert a new review, compute the sentiment of the new review, summarize and translate the summaries
```
mysql -h your_host_name -u yourusername -p < run.sql
```

Expected output:
```
################### Computing summaries for EXISTING reviews on a product ###################


--- English summary of positive reviews on the T-Shirt ---
The T-Shirt is made from high-quality cotton and has a comfortable fit, making it perfect for everyday wear. The washing instructions are clear and easy to follow. However, the lack of bleach instructions may be a concern for some customers. Overall, the T-Shirt is a good option for casual outings and special occasion clothes.
--- English summary of negative reviews on the T-Shirt ---
The reviewer found the T-shirt to be of poor quality, with unsatisfactory material and unclear washing instructions. They would not recommend it to those seeking a long-lasting and easy-to-care-for shirt. Another reviewer also found the T-shirt to fall short of their expectations, citing unbreathable material and an ill-fitting size. They too would not recommend this product to others.
--- Spanish summary of positive reviews on the T-Shirt ---
La camiseta está hecha de algodón de alta calidad y tiene un ajuste cómodo, lo que la hace perfecta para usar a diario. Las instrucciones de lavado son claras y fáciles de seguir. Sin embargo, la falta de instrucciones sobre el uso de blanqueador puede ser una preocupación para algunos clientes. En general, la camiseta es una buena opción para salidas informales y ropa para ocasiones especiales.
--- Spanish summary of negative reviews on the T-Shirt ---
El revisor encontró que la camiseta era de baja calidad, con un material insatisfactorio y unas instrucciones de lavado poco claras. No la recomendaría a aquellos que buscan una prenda duradera y fácil de cuidar. Otro revisor también encontró que la camiseta no cumplía con sus expectativas, citando un material que no permite la transpiración y una talla inadecuada. Tampoco recomendaría este producto a otros.

################### Insert a new review ###################

Review: The T-Shirt is fantastic as it is not only comfortable but it is also made of sustainable material. The organic cotton feels like normal cotton while being environment-friendly. However, the washing instruction is difficult to follow.

################### Done: Insert a new review ###################


--- New review ---
Review: The T-Shirt is fantastic as it is not only comfortable but it is also made of sustainable material. The organic cotton feels like normal cotton while being environment-friendly. However, the washing instruction is difficult to follow.
--- Sentiment of the new review ---
POSITIVE

################### Computing summaries AFTER the review is inserted ###################


--- UPDATED English summary of positive reviews on the T-Shirt ---
The T-Shirt is a soft and comfortable option for everyday wear due to its high-quality cotton material and comfortable fit. The washing instructions are clear and easy to follow, ensuring that the T-Shirt retains its quality. However, some customers may be concerned about the lack of bleach instructions. Overall, the T-Shirt is a good option for casual outings and special occasion clothes. It is also made from sustainable material, making it environmentally friendly.
--- UPDATED English summary of negative reviews on the T-Shirt ---
The reviewer found the T-shirt to be of poor quality, with unsatisfactory material and unclear washing instructions. They would not recommend it to those seeking a long-lasting and easy-to-care-for shirt. Another reviewer also found the T-shirt to fall short of their expectations, citing unbreathable material and an ill-fitting size. They too would not recommend this product to others.
--- UPDATED Spanish summary of positive reviews on the T-Shirt ---
La camiseta es una opción suave y cómoda para el uso diario gracias a su material de algodón de alta calidad y su ajuste confortable. Las instrucciones de lavado son claras y fáciles de seguir, lo que garantiza que la camiseta mantenga su calidad. Sin embargo, algunos clientes pueden estar preocupados por la falta de instrucciones sobre el uso de lejía. En general, la camiseta es una buena opción para salidas informales y ropa para ocasiones especiales. También está hecha de material sostenible, lo que la hace respetuosa con el medio ambiente.
--- UPDATED Spanish summary of negative reviews on the T-Shirt ---
El revisor encontró que la camiseta era de baja calidad, con un material insatisfactorio y unas instrucciones de lavado poco claras. No la recomendaría a aquellos que buscan una prenda duradera y fácil de cuidar. Otro revisor también encontró que la camiseta no cumplía con sus expectativas, citando un material que no permite la transpiración y una talla inadecuada. Tampoco recomendaría este producto a otros.
```


## Contributing
This project is open source.  Please submit your contributions by forking this repository and submitting a pull request!  Oracle appreciates any contributions that are made by the open source community.

## License
Copyright (c) 2024 Oracle and/or its affiliates.

Licensed under the Universal Permissive License (UPL), Version 1.0.

See [LICENSE](LICENSE) for more details.

ORACLE AND ITS AFFILIATES DO NOT PROVIDE ANY WARRANTY WHATSOEVER, EXPRESS OR IMPLIED, FOR ANY SOFTWARE, MATERIAL OR CONTENT OF ANY KIND CONTAINED OR PRODUCED WITHIN THIS REPOSITORY, AND IN PARTICULAR SPECIFICALLY DISCLAIM ANY AND ALL IMPLIED WARRANTIES OF TITLE, NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE.  FURTHERMORE, ORACLE AND ITS AFFILIATES DO NOT REPRESENT THAT ANY CUSTOMARY SECURITY REVIEW HAS BEEN PERFORMED WITH RESPECT TO ANY SOFTWARE, MATERIAL OR CONTENT CONTAINED OR PRODUCED WITHIN THIS REPOSITORY. IN ADDITION, AND WITHOUT LIMITING THE FOREGOING, THIRD PARTIES MAY HAVE POSTED SOFTWARE, MATERIAL OR CONTENT TO THIS REPOSITORY WITHOUT ANY REVIEW. USE AT YOUR OWN RISK.