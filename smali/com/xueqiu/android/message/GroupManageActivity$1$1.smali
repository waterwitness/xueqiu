.class final Lcom/xueqiu/android/message/GroupManageActivity$1$1;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/GroupManageActivity$1;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/xueqiu/android/message/GroupManageActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/GroupManageActivity$1;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xueqiu/android/message/GroupManageActivity$1$1;->a:Lcom/xueqiu/android/message/GroupManageActivity$1;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity$1$1;->a:Lcom/xueqiu/android/message/GroupManageActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/GroupManageActivity$1;->b:Lcom/xueqiu/android/message/GroupManageActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupManageActivity;->b(Lcom/xueqiu/android/message/GroupManageActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/GroupManageActivity$1$1;->a:Lcom/xueqiu/android/message/GroupManageActivity$1;

    iget-object v1, v1, Lcom/xueqiu/android/message/GroupManageActivity$1;->b:Lcom/xueqiu/android/message/GroupManageActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/GroupManageActivity;->a(Lcom/xueqiu/android/message/GroupManageActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 56
    check-cast p1, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1065
    if-nez p1, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity$1$1;->a:Lcom/xueqiu/android/message/GroupManageActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/GroupManageActivity$1;->b:Lcom/xueqiu/android/message/GroupManageActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupManageActivity;->b(Lcom/xueqiu/android/message/GroupManageActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/GroupManageActivity$1$1;->a:Lcom/xueqiu/android/message/GroupManageActivity$1;

    iget-object v1, v1, Lcom/xueqiu/android/message/GroupManageActivity$1;->b:Lcom/xueqiu/android/message/GroupManageActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/GroupManageActivity;->a(Lcom/xueqiu/android/message/GroupManageActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1067
    :goto_0
    return-void

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity$1$1;->a:Lcom/xueqiu/android/message/GroupManageActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/GroupManageActivity$1;->b:Lcom/xueqiu/android/message/GroupManageActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupManageActivity;->c(Lcom/xueqiu/android/message/GroupManageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity$1$1;->a:Lcom/xueqiu/android/message/GroupManageActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/GroupManageActivity$1;->b:Lcom/xueqiu/android/message/GroupManageActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupManageActivity;->b(Lcom/xueqiu/android/message/GroupManageActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1071
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupManageActivity$1$1;->a:Lcom/xueqiu/android/message/GroupManageActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/GroupManageActivity$1;->b:Lcom/xueqiu/android/message/GroupManageActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/message/GroupManageActivity;->a(Lcom/xueqiu/android/message/GroupManageActivity;Lcom/xueqiu/android/message/model/IMGroup;)V

    goto :goto_0
.end method
