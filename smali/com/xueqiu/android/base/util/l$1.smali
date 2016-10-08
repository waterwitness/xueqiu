.class final Lcom/xueqiu/android/base/util/l$1;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/stock/model/Portfolio;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/b;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/b;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$1;->a:Lcom/xueqiu/android/common/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/util/l$1;->b:[Ljava/lang/String;

    iput p2, p0, Lcom/xueqiu/android/base/util/l$1;->c:I

    iput-object p3, p0, Lcom/xueqiu/android/base/util/l$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$1;->a:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 61
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 57
    check-cast p1, Ljava/util/List;

    .line 1066
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$1;->a:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1068
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/l$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/l$1$1;-><init>(Lcom/xueqiu/android/base/util/l$1;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 1074
    new-instance v1, Lcom/xueqiu/android/base/util/l$1$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/l$1$2;-><init>(Lcom/xueqiu/android/base/util/l$1;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 1088
    new-instance v2, Lcom/xueqiu/android/base/util/l$1$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/util/l$1$3;-><init>(Lcom/xueqiu/android/base/util/l$1;)V

    invoke-virtual {v0, v2}, Lrx/a;->b(Lrx/c/g;)Lrx/a;

    move-result-object v0

    .line 1093
    invoke-virtual {v1}, Lrx/a;->i()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/base/util/l$1$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/util/l$1$4;-><init>(Lcom/xueqiu/android/base/util/l$1;)V

    .line 1088
    invoke-static {v0, v1, v2}, Lrx/a;->a(Lrx/a;Lrx/a;Lrx/c/g;)Lrx/a;

    move-result-object v0

    .line 1157
    invoke-virtual {v0}, Lrx/a;->g()Lrx/j;

    .line 57
    return-void
.end method
