.class public Lcom/xueqiu/android/tactic/c/b;
.super Lcom/xueqiu/android/common/c;
.source "TacticPushFragment.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/xueqiu/android/tactic/a/f;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:J

.field private g:Lcom/xueqiu/android/tactic/d/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/c/b;)Lcom/xueqiu/android/tactic/d/h;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->g:Lcom/xueqiu/android/tactic/d/h;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/c/b;Lcom/xueqiu/android/tactic/d/h;)Lcom/xueqiu/android/tactic/d/h;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/xueqiu/android/tactic/c/b;->g:Lcom/xueqiu/android/tactic/d/h;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/c/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xueqiu/android/tactic/c/b;->refresh()V

    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->g:Lcom/xueqiu/android/tactic/d/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->g:Lcom/xueqiu/android/tactic/d/h;

    .line 6068
    iget-object v0, v0, Lcom/xueqiu/android/tactic/d/h;->product:Lcom/xueqiu/android/tactic/d/g;

    .line 109
    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/c/b;->g:Lcom/xueqiu/android/tactic/d/h;

    .line 7068
    iget-object v1, v1, Lcom/xueqiu/android/tactic/d/h;->product:Lcom/xueqiu/android/tactic/d/g;

    .line 7247
    iget-object v1, v1, Lcom/xueqiu/android/tactic/d/g;->title:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/c/b;->g:Lcom/xueqiu/android/tactic/d/h;

    .line 8064
    iget-object v1, v1, Lcom/xueqiu/android/tactic/d/h;->createdAt:Ljava/util/Date;

    .line 113
    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->b:Lcom/xueqiu/android/tactic/a/f;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/c/b;->g:Lcom/xueqiu/android/tactic/d/h;

    .line 8068
    iget-object v1, v1, Lcom/xueqiu/android/tactic/d/h;->product:Lcom/xueqiu/android/tactic/d/g;

    .line 8191
    iget-wide v2, v1, Lcom/xueqiu/android/tactic/d/g;->id:J

    .line 9143
    iput-wide v2, v0, Lcom/xueqiu/android/tactic/a/f;->f:J

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->b:Lcom/xueqiu/android/tactic/a/f;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/c/b;->g:Lcom/xueqiu/android/tactic/d/h;

    .line 10076
    iget-object v1, v1, Lcom/xueqiu/android/tactic/d/h;->stocks:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/tactic/a/f;->a(Ljava/util/ArrayList;)V

    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->b:Lcom/xueqiu/android/tactic/a/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/tactic/a/f;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f0301d9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 47
    const-string v1, "extra_push_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/tactic/c/b;->f:J

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 48
    const-string v1, "extra_push"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/h;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->g:Lcom/xueqiu/android/tactic/d/h;

    .line 49
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/c/b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/xueqiu/android/tactic/c/b;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->g:Lcom/xueqiu/android/tactic/d/h;

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/xueqiu/android/tactic/c/b;->refresh()V

    .line 56
    :cond_1
    const v0, 0x7f0703ef

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/c/b;->a(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5071
    const v0, 0x7f0e06a3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/c/b;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->d:Landroid/widget/TextView;

    .line 5072
    const v0, 0x7f0e06a4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/c/b;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->e:Landroid/widget/TextView;

    .line 5073
    const v0, 0x7f0e06a0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/c/b;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->a:Landroid/widget/ListView;

    .line 5074
    const v0, 0x7f0e069f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/c/b;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->c:Landroid/view/View;

    .line 5075
    new-instance v0, Lcom/xueqiu/android/tactic/a/f;

    invoke-virtual {p0}, Lcom/xueqiu/android/tactic/c/b;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/tactic/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->b:Lcom/xueqiu/android/tactic/a/f;

    .line 5076
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->b:Lcom/xueqiu/android/tactic/a/f;

    iget-wide v2, p0, Lcom/xueqiu/android/tactic/c/b;->f:J

    .line 5143
    iput-wide v2, v0, Lcom/xueqiu/android/tactic/a/f;->f:J

    .line 5077
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/c/b;->b:Lcom/xueqiu/android/tactic/a/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5079
    iget-object v0, p0, Lcom/xueqiu/android/tactic/c/b;->c:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/tactic/c/b$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/tactic/c/b$1;-><init>(Lcom/xueqiu/android/tactic/c/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5092
    invoke-virtual {p0}, Lcom/xueqiu/android/tactic/c/b;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-wide v2, p0, Lcom/xueqiu/android/tactic/c/b;->f:J

    new-instance v1, Lcom/xueqiu/android/tactic/c/b$2;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/tactic/c/b$2;-><init>(Lcom/xueqiu/android/tactic/c/b;Lcom/xueqiu/android/base/b/q;)V

    .line 5384
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/al;->c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 68
    return-void
.end method
