.class public final Lcom/xueqiu/android/tactic/a/d;
.super Lcom/xueqiu/android/common/a/d;
.source "TacticPoolAdapter.java"


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
.field public e:Lcom/xueqiu/android/tactic/d/g;

.field private f:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0301d2

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/d;->f:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/a/d;)Lcom/xueqiu/android/tactic/d/g;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/d;->e:Lcom/xueqiu/android/tactic/d/g;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 42
    if-nez p2, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/d;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f0301d2

    invoke-virtual {v0, v1, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1053
    new-instance v1, Lcom/xueqiu/android/tactic/a/e;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/tactic/a/e;-><init>(Lcom/xueqiu/android/tactic/a/d;)V

    .line 1069
    const v0, 0x7f0e0692

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/e;->a:Landroid/view/View;

    .line 1070
    const v0, 0x7f0e0693

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/e;->b:Landroid/widget/TextView;

    .line 1071
    const v0, 0x7f0e0694

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/e;->c:Landroid/widget/TextView;

    .line 1072
    const v0, 0x7f0e0695

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/e;->d:Landroid/widget/TextView;

    .line 1073
    const v0, 0x7f0e0696

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/e;->e:Landroid/widget/TextView;

    .line 1074
    const v0, 0x7f0e0697

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/e;->f:Landroid/widget/TextView;

    .line 1075
    const v0, 0x7f0e0698

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/e;->g:Landroid/widget/TextView;

    .line 1076
    const v0, 0x7f0e0699

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/e;->h:Landroid/widget/TextView;

    .line 1053
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/tactic/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/b;

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/tactic/a/e;

    .line 1081
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/e;->b:Landroid/widget/TextView;

    .line 2125
    iget-object v3, v0, Lcom/xueqiu/android/tactic/d/b;->name:Ljava/lang/String;

    .line 1081
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/e;->c:Landroid/widget/TextView;

    .line 2133
    iget-object v3, v0, Lcom/xueqiu/android/tactic/d/b;->symbol:Ljava/lang/String;

    .line 1082
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3117
    iget-boolean v2, v0, Lcom/xueqiu/android/tactic/d/b;->isNew:Z

    .line 1083
    if-eqz v2, :cond_3

    .line 1084
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/e;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4105
    :goto_0
    iget v2, v0, Lcom/xueqiu/android/tactic/d/b;->flag:I

    .line 1089
    if-ne v2, v9, :cond_4

    const-string v2, "\u505c\u724c"

    .line 1090
    :goto_1
    iget-object v3, v1, Lcom/xueqiu/android/tactic/a/e;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/e;->f:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    .line 5141
    iget-wide v6, v0, Lcom/xueqiu/android/tactic/d/b;->triggerPrice:D

    .line 1091
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6105
    iget v2, v0, Lcom/xueqiu/android/tactic/d/b;->flag:I

    .line 1093
    if-ne v2, v9, :cond_5

    .line 1094
    const-string v2, "----"

    .line 1103
    :goto_2
    iget-object v3, v1, Lcom/xueqiu/android/tactic/a/e;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/e;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v3

    .line 9093
    iget-wide v4, v0, Lcom/xueqiu/android/tactic/d/b;->changePercent:D

    .line 1104
    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9109
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/b;->desc:Ljava/lang/String;

    .line 9157
    iget v3, v0, Lcom/xueqiu/android/tactic/d/b;->replyCount:I

    .line 1106
    if-lez v3, :cond_1

    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10157
    iget v3, v0, Lcom/xueqiu/android/tactic/d/b;->replyCount:I

    .line 1107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11109
    iget-object v3, v0, Lcom/xueqiu/android/tactic/d/b;->desc:Ljava/lang/String;

    .line 1107
    const-string v4, "#ffb574"

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1109
    :cond_1
    iget-object v3, v1, Lcom/xueqiu/android/tactic/a/e;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11165
    iget-wide v2, v0, Lcom/xueqiu/android/tactic/d/b;->statusId:J

    .line 1110
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1111
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/e;->h:Landroid/widget/TextView;

    new-instance v3, Lcom/xueqiu/android/tactic/a/e$1;

    invoke-direct {v3, v1, v0}, Lcom/xueqiu/android/tactic/a/e$1;-><init>(Lcom/xueqiu/android/tactic/a/e;Lcom/xueqiu/android/tactic/d/b;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    :cond_2
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/e;->a:Landroid/view/View;

    new-instance v3, Lcom/xueqiu/android/tactic/a/e$2;

    invoke-direct {v3, v1, v0}, Lcom/xueqiu/android/tactic/a/e$2;-><init>(Lcom/xueqiu/android/tactic/a/e;Lcom/xueqiu/android/tactic/d/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-object p2

    .line 1086
    :cond_3
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/e;->d:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1089
    :cond_4
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%.2f"

    new-array v4, v8, [Ljava/lang/Object;

    .line 5097
    iget-wide v6, v0, Lcom/xueqiu/android/tactic/d/b;->current:D

    .line 1089
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 7093
    :cond_5
    iget-wide v2, v0, Lcom/xueqiu/android/tactic/d/b;->changePercent:D

    .line 1097
    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    .line 1098
    const-string v2, "0.00%"

    goto :goto_2

    .line 1100
    :cond_6
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%+.2f%%"

    new-array v4, v8, [Ljava/lang/Object;

    .line 8093
    iget-wide v6, v0, Lcom/xueqiu/android/tactic/d/b;->changePercent:D

    .line 1100
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method
