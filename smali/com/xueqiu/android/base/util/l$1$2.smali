.class final Lcom/xueqiu/android/base/util/l$1$2;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/l$1;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/xueqiu/android/stock/model/Portfolio;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/l$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$1;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$1$2;->a:Lcom/xueqiu/android/base/util/l$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 74
    check-cast p1, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 1077
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$1$2;->a:Lcom/xueqiu/android/base/util/l$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$1;->b:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1078
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$1$2;->a:Lcom/xueqiu/android/base/util/l$1;

    iget-object v1, v0, Lcom/xueqiu/android/base/util/l$1;->b:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 1079
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1080
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1078
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1084
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->isInclude()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method
