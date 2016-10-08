.class final Lcom/xueqiu/android/message/TalkProfileActivity$11$1;
.super Lcom/xueqiu/android/base/b/p;
.source "TalkProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/message/model/IMGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity$11;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity$11;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$11;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 224
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$11;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$11;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->f(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$11;

    iget-object v1, v1, Lcom/xueqiu/android/message/TalkProfileActivity$11;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 221
    check-cast p1, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1230
    if-nez p1, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$11;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$11;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->f(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$11;

    iget-object v1, v1, Lcom/xueqiu/android/message/TalkProfileActivity$11;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1232
    :goto_0
    return-void

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$11;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$11;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 1235
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$11;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$11;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/message/model/IMGroup;)V

    goto :goto_0
.end method
