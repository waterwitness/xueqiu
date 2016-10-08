.class final Lcom/xueqiu/android/message/a$6;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/xueqiu/android/message/a$6;->a:Lcom/xueqiu/android/message/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 131
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 132
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 128
    check-cast p1, Ljava/util/List;

    .line 1136
    if-eqz p1, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/xueqiu/android/message/a$6;->a:Lcom/xueqiu/android/message/a;

    invoke-static {v0}, Lcom/xueqiu/android/message/a;->b(Lcom/xueqiu/android/message/a;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/message/b;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 128
    :cond_0
    return-void
.end method
