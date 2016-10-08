.class final Lcom/xiaomi/d/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/d/n;


# instance fields
.field final synthetic a:Lcom/xiaomi/d/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/d/o;->a:Lcom/xiaomi/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/b/a/a/a/c;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/d/o;->a:Lcom/xiaomi/d/f;

    invoke-virtual {v0}, Lcom/xiaomi/d/f;->j()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()D
    .locals 8

    .prologue
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 0
    iget-object v2, p0, Lcom/xiaomi/d/o;->a:Lcom/xiaomi/d/f;

    const-string v3, "f3.mi-stat.gslb.mi-idc.com"

    invoke-virtual {v2, v3}, Lcom/xiaomi/d/f;->b(Ljava/lang/String;)Lcom/xiaomi/d/b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1000
    iget-wide v4, v2, Lcom/xiaomi/d/b;->k:D

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 0
    :cond_0
    :goto_0
    return-wide v0

    .line 1000
    :cond_1
    iget-wide v0, v2, Lcom/xiaomi/d/b;->k:D

    goto :goto_0
.end method
