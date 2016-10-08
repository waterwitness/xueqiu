.class public final Lcom/xueqiu/android/tactic/a/f;
.super Lcom/xueqiu/android/common/a/d;
.source "TacticPushAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/tactic/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field e:Z

.field public f:J

.field private g:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/tactic/a/f;->e:Z

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/f;->g:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/a/f;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/xueqiu/android/tactic/a/f;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/a/f;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/a/f;->f:J

    return-wide v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 41
    if-nez p2, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/f;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0301da

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1052
    new-instance v1, Lcom/xueqiu/android/tactic/a/g;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/tactic/a/g;-><init>(Lcom/xueqiu/android/tactic/a/f;)V

    .line 1065
    const v0, 0x7f0e0692

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/g;->a:Landroid/view/View;

    .line 1066
    const v0, 0x7f0e0693

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/g;->b:Landroid/widget/TextView;

    .line 1067
    const v0, 0x7f0e0694

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/g;->c:Landroid/widget/TextView;

    .line 1068
    const v0, 0x7f0e0697

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/g;->d:Landroid/widget/TextView;

    .line 1069
    const v0, 0x7f0e0699

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/g;->e:Landroid/widget/TextView;

    .line 1070
    const v0, 0x7f0e06a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/g;->f:Landroid/widget/TextView;

    .line 1052
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/tactic/a/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/b;

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/tactic/a/g;

    .line 1075
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/g;->b:Landroid/widget/TextView;

    .line 2125
    iget-object v3, v0, Lcom/xueqiu/android/tactic/d/b;->name:Ljava/lang/String;

    .line 1075
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/g;->c:Landroid/widget/TextView;

    .line 2133
    iget-object v3, v0, Lcom/xueqiu/android/tactic/d/b;->symbol:Ljava/lang/String;

    .line 1076
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/g;->d:Landroid/widget/TextView;

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 2141
    iget-wide v6, v0, Lcom/xueqiu/android/tactic/d/b;->triggerPrice:D

    .line 1077
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3109
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/b;->desc:Ljava/lang/String;

    .line 3157
    iget v3, v0, Lcom/xueqiu/android/tactic/d/b;->replyCount:I

    .line 1079
    if-lez v3, :cond_1

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4157
    iget v3, v0, Lcom/xueqiu/android/tactic/d/b;->replyCount:I

    .line 1080
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5109
    iget-object v3, v0, Lcom/xueqiu/android/tactic/d/b;->desc:Ljava/lang/String;

    .line 1080
    const-string v4, "#ffb574"

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1082
    :cond_1
    iget-object v3, v1, Lcom/xueqiu/android/tactic/a/g;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5165
    iget-wide v4, v0, Lcom/xueqiu/android/tactic/d/b;->statusId:J

    .line 1083
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 1084
    iget-object v3, v1, Lcom/xueqiu/android/tactic/a/g;->e:Landroid/widget/TextView;

    new-instance v4, Lcom/xueqiu/android/tactic/a/g$1;

    invoke-direct {v4, v1, v0}, Lcom/xueqiu/android/tactic/a/g$1;-><init>(Lcom/xueqiu/android/tactic/a/g;Lcom/xueqiu/android/tactic/d/b;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    :cond_2
    iget-object v3, v1, Lcom/xueqiu/android/tactic/a/g;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/g;->a:Landroid/view/View;

    new-instance v3, Lcom/xueqiu/android/tactic/a/g$2;

    invoke-direct {v3, v1, v0}, Lcom/xueqiu/android/tactic/a/g$2;-><init>(Lcom/xueqiu/android/tactic/a/g;Lcom/xueqiu/android/tactic/d/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/g;->g:Lcom/xueqiu/android/tactic/a/f;

    .line 6026
    iget-boolean v2, v2, Lcom/xueqiu/android/tactic/a/f;->e:Z

    .line 1111
    if-eqz v2, :cond_3

    .line 1112
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/g;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1113
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/g;->f:Landroid/widget/TextView;

    new-instance v3, Lcom/xueqiu/android/tactic/a/g$3;

    invoke-direct {v3, v1, v0}, Lcom/xueqiu/android/tactic/a/g$3;-><init>(Lcom/xueqiu/android/tactic/a/g;Lcom/xueqiu/android/tactic/d/b;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :goto_0
    return-object p2

    .line 1125
    :cond_3
    iget-object v0, v1, Lcom/xueqiu/android/tactic/a/g;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
