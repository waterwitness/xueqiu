.class final Lcom/xueqiu/android/stock/d/a$7;
.super Lcom/xueqiu/android/base/b/p;
.source "QuotesCenterItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/d/a;->a(II)V
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

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/stock/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/d/a;Lcom/xueqiu/android/base/b/q;II)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    iput p3, p0, Lcom/xueqiu/android/stock/d/a$7;->a:I

    iput p4, p0, Lcom/xueqiu/android/stock/d/a$7;->b:I

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 282
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 283
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    .line 1057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->c:Lcom/xueqiu/android/stock/c/w;

    .line 283
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/w;->z()V

    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 285
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 278
    check-cast p1, Lorg/json/JSONObject;

    .line 1290
    :try_start_0
    iget v0, p0, Lcom/xueqiu/android/stock/d/a$7;->a:I

    if-ne v0, v2, :cond_3

    .line 1291
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    .line 2057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->c:Lcom/xueqiu/android/stock/c/w;

    .line 1291
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/w;->z()V

    .line 1292
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    .line 3057
    iput-object p1, v0, Lcom/xueqiu/android/stock/d/a;->k:Lorg/json/JSONObject;

    .line 1293
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    .line 4057
    iget-boolean v0, v0, Lcom/xueqiu/android/stock/d/a;->f:Z

    .line 1293
    if-nez v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    iget v1, p0, Lcom/xueqiu/android/stock/d/a$7;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/xueqiu/android/stock/d/a;->a(Lorg/json/JSONObject;I)V

    .line 1298
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stock/d/a$7;->b:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/xueqiu/android/stock/d/a$7;->b:I

    if-ne v0, v3, :cond_2

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    const/4 v1, 0x2

    iget v2, p0, Lcom/xueqiu/android/stock/d/a$7;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/stock/d/a;->a(II)V

    .line 1307
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 1310
    :goto_1
    return-void

    .line 1302
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    .line 5057
    iput-object p1, v0, Lcom/xueqiu/android/stock/d/a;->l:Lorg/json/JSONObject;

    .line 1303
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    .line 6057
    iget-boolean v0, v0, Lcom/xueqiu/android/stock/d/a;->f:Z

    .line 1303
    if-nez v0, :cond_2

    .line 1304
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$7;->c:Lcom/xueqiu/android/stock/d/a;

    iget v1, p0, Lcom/xueqiu/android/stock/d/a$7;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/xueqiu/android/stock/d/a;->b(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1309
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
