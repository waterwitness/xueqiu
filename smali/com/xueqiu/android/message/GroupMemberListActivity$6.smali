.class final Lcom/xueqiu/android/message/GroupMemberListActivity$6;
.super Ljava/lang/Object;
.source "GroupMemberListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/GroupMemberListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/message/GroupMemberListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/GroupMemberListActivity;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$6;->b:Lcom/xueqiu/android/message/GroupMemberListActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$6;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .prologue
    .line 184
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$6;->b:Lcom/xueqiu/android/message/GroupMemberListActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$6;->a:Lcom/xueqiu/android/community/model/User;

    .line 1191
    invoke-static {}, Lcom/xueqiu/android/message/GroupMemberListActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    iget-object v3, v0, Lcom/xueqiu/android/message/GroupMemberListActivity;->k:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v8

    aput-wide v8, v3, v6

    new-instance v6, Lcom/xueqiu/android/message/GroupMemberListActivity$7;

    invoke-direct {v6, v0, v0, v1}, Lcom/xueqiu/android/message/GroupMemberListActivity$7;-><init>(Lcom/xueqiu/android/message/GroupMemberListActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/xueqiu/android/base/b/ai;->a(J[JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 185
    return-void
.end method
