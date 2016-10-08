.class final Lcom/xueqiu/android/message/c$37;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/c;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/message/model/Talk;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/xueqiu/android/message/c$37;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 261
    check-cast p1, Ljava/util/List;

    .line 1264
    iget-object v0, p0, Lcom/xueqiu/android/message/c$37;->a:Lcom/xueqiu/android/message/c;

    .line 2144
    iget-object v1, v0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-eqz v1, :cond_0

    .line 2145
    iget-object v1, v0, Lcom/xueqiu/android/message/c;->f:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/message/c$36;

    invoke-direct {v2, v0, p1}, Lcom/xueqiu/android/message/c$36;-><init>(Lcom/xueqiu/android/message/c;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 261
    :cond_0
    return-void
.end method
