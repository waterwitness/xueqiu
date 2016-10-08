.class final Lcom/xueqiu/android/cube/CubeActivity$57;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;I)V
    .locals 0

    .prologue
    .line 2660
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput p3, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->a:I

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeActivity;->i()V

    .line 2697
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 2698
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    if-eqz v0, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->a:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(I)V

    .line 2701
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2660
    check-cast p1, Lorg/json/JSONObject;

    .line 3664
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeActivity;->i()V

    .line 3667
    if-eqz p1, :cond_1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3669
    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3670
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 3671
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/p/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3673
    iget v2, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3676
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v1, v1, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    .line 3915
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 4113
    iput-object v0, v1, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3683
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    if-eqz v0, :cond_2

    .line 3684
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->a:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3691
    :cond_2
    :goto_1
    return-void

    .line 3678
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3687
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 3688
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    if-eqz v0, :cond_2

    .line 3689
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeActivity$57;->a:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(I)V

    goto :goto_1
.end method
