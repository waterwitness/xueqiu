.class final Lcom/xueqiu/android/message/d$12;
.super Ljava/lang/Object;
.source "TalkListFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/d;->a(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/xueqiu/android/message/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/d;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/xueqiu/android/message/d$12;->a:Lcom/xueqiu/android/message/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 194
    check-cast p1, Ljava/util/List;

    .line 1197
    iget-object v0, p0, Lcom/xueqiu/android/message/d$12;->a:Lcom/xueqiu/android/message/d;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/d;->b(Ljava/util/List;)V

    .line 194
    return-void
.end method
