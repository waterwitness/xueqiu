.class final Lcom/xueqiu/android/common/r$3;
.super Lcom/xueqiu/android/base/b/p;
.source "SNBListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/r;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/common/r;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/r;Z)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/xueqiu/android/common/r$3;->b:Lcom/xueqiu/android/common/r;

    iput-boolean p2, p0, Lcom/xueqiu/android/common/r$3;->a:Z

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/common/r$3;->b:Lcom/xueqiu/android/common/r;

    .line 1043
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->b:Lcom/xueqiu/android/common/t;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/common/r$3;->b:Lcom/xueqiu/android/common/r;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/xueqiu/android/common/r$3;->a:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/xueqiu/android/common/r;->a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 96
    check-cast p1, Ljava/util/ArrayList;

    .line 1100
    iget-object v0, p0, Lcom/xueqiu/android/common/r$3;->b:Lcom/xueqiu/android/common/r;

    .line 2043
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->b:Lcom/xueqiu/android/common/t;

    .line 1100
    if-eqz v0, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/xueqiu/android/common/r$3;->b:Lcom/xueqiu/android/common/r;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 3043
    :goto_0
    iput v0, v1, Lcom/xueqiu/android/common/r;->e:I

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/common/r$3;->b:Lcom/xueqiu/android/common/r;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/xueqiu/android/common/r$3;->a:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/xueqiu/android/common/r;->a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V

    .line 96
    :cond_0
    return-void

    .line 1101
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
