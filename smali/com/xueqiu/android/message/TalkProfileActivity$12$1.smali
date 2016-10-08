.class final Lcom/xueqiu/android/message/TalkProfileActivity$12$1;
.super Lcom/xueqiu/android/base/b/p;
.source "TalkProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity$12;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity$12;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity$12;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$12$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$12;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 248
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 249
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$12$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$12;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$12;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->g(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$12$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$12;

    iget-object v1, v1, Lcom/xueqiu/android/message/TalkProfileActivity$12;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isAllowInviteUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 245
    check-cast p1, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1254
    if-nez p1, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$12$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$12;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$12;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->g(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$12$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$12;

    iget-object v1, v1, Lcom/xueqiu/android/message/TalkProfileActivity$12;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isAllowInviteUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1256
    :goto_0
    return-void

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$12$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$12;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$12;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/message/model/IMGroup;)V

    goto :goto_0
.end method
