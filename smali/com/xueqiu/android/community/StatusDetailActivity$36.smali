.class final Lcom/xueqiu/android/community/StatusDetailActivity$36;
.super Landroid/content/BroadcastReceiver;
.source "StatusDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 2127
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 2130
    const-string v0, "extra_comment"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 2132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->isAnswer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2133
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->I(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 2136
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2137
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2138
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    new-instance v2, Lcom/xueqiu/android/community/a/a;

    iget-object v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/community/a/a;-><init>(Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->b(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/a/a;)Lcom/xueqiu/android/community/a/a;

    .line 2139
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    .line 2367
    iput-wide v2, v1, Lcom/xueqiu/android/community/a/a;->e:J

    .line 2140
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/a/a;->a(Ljava/util/ArrayList;)V

    .line 2141
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2145
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/a;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 2146
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->t(Lcom/xueqiu/android/community/StatusDetailActivity;)I

    .line 2147
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->r(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 2157
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0e0141

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2158
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->L(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 2161
    :cond_3
    return-void

    .line 2149
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->J(Lcom/xueqiu/android/community/StatusDetailActivity;)I

    move-result v1

    if-nez v1, :cond_6

    .line 2150
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2154
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 2151
    :cond_6
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->K(Lcom/xueqiu/android/community/StatusDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2152
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$36;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
