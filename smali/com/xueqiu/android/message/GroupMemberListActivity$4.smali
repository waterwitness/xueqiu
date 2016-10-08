.class final Lcom/xueqiu/android/message/GroupMemberListActivity$4;
.super Ljava/lang/Object;
.source "GroupMemberListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/GroupMemberListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/GroupMemberListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/GroupMemberListActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$4;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f070409

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$4;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 160
    iget-object v1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$4;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    .line 1176
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 1176
    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0701c0

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/GroupMemberListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1178
    invoke-virtual {v1, v6}, Lcom/xueqiu/android/message/GroupMemberListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0701a7

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/GroupMemberListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 161
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1180
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070070

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/GroupMemberListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0700b1

    .line 1181
    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/GroupMemberListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/GroupMemberListActivity$6;

    invoke-direct {v4, v1, v0}, Lcom/xueqiu/android/message/GroupMemberListActivity$6;-><init>(Lcom/xueqiu/android/message/GroupMemberListActivity;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1186
    invoke-virtual {v1, v6}, Lcom/xueqiu/android/message/GroupMemberListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0701aa

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/GroupMemberListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
