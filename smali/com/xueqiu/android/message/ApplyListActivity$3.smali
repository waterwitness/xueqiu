.class final Lcom/xueqiu/android/message/ApplyListActivity$3;
.super Lcom/xueqiu/android/base/b/p;
.source "ApplyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ApplyListActivity;
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
.field final synthetic a:Lcom/xueqiu/android/message/model/Apply;

.field final synthetic b:Lcom/xueqiu/android/message/ApplyListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ApplyListActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/message/model/Apply;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/xueqiu/android/message/ApplyListActivity$3;->b:Lcom/xueqiu/android/message/ApplyListActivity;

    iput-object p3, p0, Lcom/xueqiu/android/message/ApplyListActivity$3;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 145
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 141
    check-cast p1, Ljava/lang/Boolean;

    .line 1150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity$3;->b:Lcom/xueqiu/android/message/ApplyListActivity;

    const v1, 0x7f070251

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ApplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1149
    :goto_0
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity$3;->b:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ApplyListActivity;->a(Lcom/xueqiu/android/message/ApplyListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 1152
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ApplyListActivity$3;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1153
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity$3;->b:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ApplyListActivity;->a(Lcom/xueqiu/android/message/ApplyListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 1153
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 141
    :cond_0
    return-void

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity$3;->b:Lcom/xueqiu/android/message/ApplyListActivity;

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ApplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
