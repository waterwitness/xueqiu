.class final Lcom/xueqiu/android/message/c$23;
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
        "Lcom/xueqiu/android/message/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/xueqiu/android/message/c$23;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 250
    check-cast p1, Ljava/util/List;

    .line 1253
    iget-object v0, p0, Lcom/xueqiu/android/message/c$23;->a:Lcom/xueqiu/android/message/c;

    .line 2132
    iget-object v1, v0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-eqz v1, :cond_0

    .line 2133
    iget-object v0, v0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/a/z;->b(Ljava/util/List;)V

    .line 250
    :cond_0
    return-void
.end method
