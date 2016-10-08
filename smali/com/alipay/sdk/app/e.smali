.class public final Lcom/alipay/sdk/app/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    sget-object v0, Lcom/alipay/sdk/app/f;->c:Lcom/alipay/sdk/app/f;

    .line 1000
    iget v0, v0, Lcom/alipay/sdk/app/f;->g:I

    .line 0
    invoke-static {v0}, Lcom/alipay/sdk/app/f;->a(I)Lcom/alipay/sdk/app/f;

    move-result-object v0

    .line 2000
    iget v1, v0, Lcom/alipay/sdk/app/f;->g:I

    .line 3000
    iget-object v0, v0, Lcom/alipay/sdk/app/f;->h:Ljava/lang/String;

    .line 0
    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultStatus={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "};memo={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "};result={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    sget-object v0, Lcom/alipay/sdk/app/f;->e:Lcom/alipay/sdk/app/f;

    .line 4000
    iget v0, v0, Lcom/alipay/sdk/app/f;->g:I

    .line 0
    invoke-static {v0}, Lcom/alipay/sdk/app/f;->a(I)Lcom/alipay/sdk/app/f;

    move-result-object v0

    .line 5000
    iget v1, v0, Lcom/alipay/sdk/app/f;->g:I

    .line 6000
    iget-object v0, v0, Lcom/alipay/sdk/app/f;->h:Ljava/lang/String;

    .line 0
    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
