.class final Lcom/xueqiu/android/message/GroupMemberListActivity$3;
.super Ljava/lang/Object;
.source "GroupMemberListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/GroupMemberListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/GroupMemberListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/GroupMemberListActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$3;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 138
    iget-object v2, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$3;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$3;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v2

    .line 1156
    iget-boolean v2, v2, Lcom/xueqiu/android/message/a/m;->a:Z

    .line 139
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$3;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/message/a/m;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$3;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    .line 1166
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070070

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700b1

    new-instance v5, Lcom/xueqiu/android/message/GroupMemberListActivity$5;

    invoke-direct {v5, v2}, Lcom/xueqiu/android/message/GroupMemberListActivity$5;-><init>(Lcom/xueqiu/android/message/GroupMemberListActivity;)V

    .line 1167
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070409

    .line 1172
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0701ab

    invoke-virtual {v2, v4}, Lcom/xueqiu/android/message/GroupMemberListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/xueqiu/android/message/GroupMemberListActivity;->j:Lcom/xueqiu/android/message/a/m;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/a/m;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$3;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$3;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v3}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v3

    .line 2156
    iget-boolean v3, v3, Lcom/xueqiu/android/message/a/m;->a:Z

    .line 142
    if-nez v3, :cond_2

    move v0, v1

    .line 2160
    :cond_2
    iput-boolean v0, v2, Lcom/xueqiu/android/message/a/m;->a:Z

    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$3;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/m;->notifyDataSetChanged()V

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$3;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->b()V

    goto :goto_0
.end method
