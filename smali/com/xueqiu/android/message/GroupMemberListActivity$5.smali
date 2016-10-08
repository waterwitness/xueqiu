.class final Lcom/xueqiu/android/message/GroupMemberListActivity$5;
.super Ljava/lang/Object;
.source "GroupMemberListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 167
    iput-object p1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$5;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    .line 170
    iget-object v2, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$5;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    .line 1208
    iget-object v0, v2, Lcom/xueqiu/android/message/GroupMemberListActivity;->j:Lcom/xueqiu/android/message/a/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/m;->a()Ljava/util/List;

    move-result-object v3

    .line 1209
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [J

    .line 1210
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1211
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 1210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1213
    :cond_0
    invoke-virtual {v2}, Lcom/xueqiu/android/message/GroupMemberListActivity;->h()Landroid/app/Dialog;

    .line 1214
    invoke-static {}, Lcom/xueqiu/android/message/GroupMemberListActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, v2, Lcom/xueqiu/android/message/GroupMemberListActivity;->k:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v6

    new-instance v1, Lcom/xueqiu/android/message/GroupMemberListActivity$8;

    invoke-direct {v1, v2, v2, v4}, Lcom/xueqiu/android/message/GroupMemberListActivity$8;-><init>(Lcom/xueqiu/android/message/GroupMemberListActivity;Lcom/xueqiu/android/base/b/q;[J)V

    invoke-virtual {v0, v6, v7, v4, v1}, Lcom/xueqiu/android/base/b/ai;->a(J[JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 171
    return-void
.end method
