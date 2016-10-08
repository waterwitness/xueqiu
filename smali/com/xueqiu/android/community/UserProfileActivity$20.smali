.class final Lcom/xueqiu/android/community/UserProfileActivity$20;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserProfileActivity;->a(Lcom/xueqiu/android/common/model/PagedList;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Question;

.field final synthetic b:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;Lcom/xueqiu/android/community/model/Question;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$20;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/UserProfileActivity$20;->a:Lcom/xueqiu/android/community/model/Question;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 852
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$20;->a:Lcom/xueqiu/android/community/model/Question;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Question;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$20;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->i(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 854
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xa8c

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 855
    const-string v1, "status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$20;->a:Lcom/xueqiu/android/community/model/Question;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Question;->getQid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v1, "status_type"

    const-string v2, "answer"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 857
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 858
    return-void
.end method
