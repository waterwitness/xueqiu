.class final Lcom/xueqiu/android/message/ApplyListActivity$2$1;
.super Lcom/xueqiu/android/base/b/p;
.source "ApplyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ApplyListActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ApplyListActivity$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ApplyListActivity$2;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/xueqiu/android/message/ApplyListActivity$2$1;->a:Lcom/xueqiu/android/message/ApplyListActivity$2;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 93
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 90
    check-cast p1, Ljava/lang/Boolean;

    .line 1098
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity$2$1;->a:Lcom/xueqiu/android/message/ApplyListActivity$2;

    iget-object v1, v0, Lcom/xueqiu/android/message/ApplyListActivity$2;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f070251

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/ApplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1099
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity$2$1;->a:Lcom/xueqiu/android/message/ApplyListActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/message/ApplyListActivity$2;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ApplyListActivity;->a(Lcom/xueqiu/android/message/ApplyListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 1101
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity$2$1;->a:Lcom/xueqiu/android/message/ApplyListActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/message/ApplyListActivity$2;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ApplyListActivity;->a(Lcom/xueqiu/android/message/ApplyListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 1102
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 90
    :cond_0
    return-void

    .line 1098
    :cond_1
    const v0, 0x7f070250

    goto :goto_0
.end method
