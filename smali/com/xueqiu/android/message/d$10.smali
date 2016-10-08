.class final Lcom/xueqiu/android/message/d$10;
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
        "Lcom/xueqiu/android/message/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/d;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/xueqiu/android/message/d$10;->a:Lcom/xueqiu/android/message/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 183
    check-cast p1, Ljava/util/List;

    .line 1186
    iget-object v0, p0, Lcom/xueqiu/android/message/d$10;->a:Lcom/xueqiu/android/message/d;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/d;->a(Ljava/util/List;)V

    .line 183
    return-void
.end method
