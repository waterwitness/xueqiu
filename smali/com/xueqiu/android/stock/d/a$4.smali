.class final Lcom/xueqiu/android/stock/d/a$4;
.super Lcom/xueqiu/android/base/b/p;
.source "QuotesCenterItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/d/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/AdBanner;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/d/a;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/xueqiu/android/stock/d/a$4;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 192
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$4;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 194
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    check-cast p1, Ljava/util/ArrayList;

    .line 1198
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1199
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/AdBanner;

    .line 1200
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/AdBanner;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    new-instance v1, Lcom/xueqiu/android/tactic/d/c;

    invoke-direct {v1}, Lcom/xueqiu/android/tactic/d/c;-><init>()V

    .line 1202
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/AdBanner;->getImage()Ljava/lang/String;

    move-result-object v2

    .line 2042
    iput-object v2, v1, Lcom/xueqiu/android/tactic/d/c;->c:Ljava/lang/String;

    .line 1203
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/AdBanner;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 2050
    iput-object v2, v1, Lcom/xueqiu/android/tactic/d/c;->d:Ljava/lang/String;

    .line 1204
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/AdBanner;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 3034
    iput-object v0, v1, Lcom/xueqiu/android/tactic/d/c;->b:Ljava/lang/String;

    .line 4026
    iput v3, v1, Lcom/xueqiu/android/tactic/d/c;->a:I

    .line 1206
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$4;->a:Lcom/xueqiu/android/stock/d/a;

    .line 4057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->j:Ljava/util/ArrayList;

    .line 1206
    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1207
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$4;->a:Lcom/xueqiu/android/stock/d/a;

    .line 5057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    .line 1207
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a$4;->a:Lcom/xueqiu/android/stock/d/a;

    .line 6057
    iget-object v1, v1, Lcom/xueqiu/android/stock/d/a;->j:Ljava/util/ArrayList;

    .line 1207
    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/b/c;->b(Ljava/util/List;)V

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$4;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 189
    return-void
.end method
