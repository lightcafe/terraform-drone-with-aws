# terraform-drone-with-aws
terraform drone with aws.

## version
- Drone drone/drone:0.7.x (0.7.1)
- Terraform hashicorp/terraform:latest (0.10.2)

## Drone Secrets の Sample
- export AWS_ACCESS_KEY=YOURAWSACCESSKEYKLMN
- export AWS_SECRET_KEY=yourawssecretkeyqrstuvwxyz0123456789ABCD
- export BACKEND_CONFIG_BUCKET=your-terraform-remote-state-unique-bucket

## 必要なもの
- 動いている Drone
- Drone と連携設定されているコードリポジトリ (GitHub, GitLab 等)
  - 連携可能なコードリポジトリは [Drone Admin Guide](http://readme.drone.io/admin/) 参照
- AWS のアカウント

## 準備
terraform state 保持 bucket を作成する。
Sample では your-terraform-remote-state-unique-bucket

terraform 操作 IAM アカウントを作成する。
権限は適切に、Demo では、 AdministratorAccess

IAM アカウント の ACCESS_KEY, SECRET_KEY を発行する
Sample では YOURAWSACCESSKEYKLMN, yourawssecretkeyqrstuvwxyz0123456789ABCD

## Drone からプロジェクト起動
1. Drone へ　アクセス
- Drone login > Account から プロジェクトを選択する
- Drone > <your project> > Secrents
  - AWS_ACCESS_KEY, AWS_SECRET_KEY, BACKEND_CONFIG_BUCKET を設定する
- sample project を変更し commit push する
- Drone のビルドが実行される

---

## 困ったときは
- Drone に渡されている変数を参照したい
  - commands に export を書く
  - drone が 定義している変数 [User Guide > Env Reference](http://readme.drone.io/usage/environment-reference/)

---

## 参考
- [Terraform](https://www.terraform.io/)
- [Drone](http://docs.drone.io/)
- [AWS](https://aws.amazon.com/jp/)
