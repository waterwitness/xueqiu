.class final Lcom/xueqiu/android/common/search/b/a$2;
.super Lcom/xueqiu/android/base/b/p;
.source "USearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/search/b/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/common/model/SearchHots;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/b/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/b/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/common/search/b/a$2;->a:Lcom/xueqiu/android/common/search/b/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/xueqiu/android/common/search/b/a;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onErrorResponse error = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a$2;->a:Lcom/xueqiu/android/common/search/b/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/b/a;->a(Lcom/xueqiu/android/common/search/b/a;)Lcom/xueqiu/android/common/search/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/search/a/c;->c(Z)V

    .line 118
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 119
    return-void

    .line 116
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 113
    check-cast p1, Ljava/util/List;

    .line 1123
    invoke-static {}, Lcom/xueqiu/android/common/search/b/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponse response = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a$2;->a:Lcom/xueqiu/android/common/search/b/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/b/a;->a(Lcom/xueqiu/android/common/search/b/a;)Lcom/xueqiu/android/common/search/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/search/a/c;->c(Z)V

    .line 1125
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a$2;->a:Lcom/xueqiu/android/common/search/b/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/b/a;->a(Lcom/xueqiu/android/common/search/b/a;)Lcom/xueqiu/android/common/search/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xueqiu/android/common/search/a/c;->c(Ljava/util/List;)V

    .line 113
    return-void
.end method
