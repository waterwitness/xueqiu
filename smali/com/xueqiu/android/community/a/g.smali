.class public final Lcom/xueqiu/android/community/a/g;
.super Lcom/xueqiu/android/common/a/d;
.source "LiveNewsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/LiveNews;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    const v0, 0x7f03007b

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/g;->e:Ljava/text/DateFormat;

    .line 40
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v8, 0x5

    const/4 v4, 0x0

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 54
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    new-instance v1, Lcom/xueqiu/android/community/a/h;

    invoke-direct {v1}, Lcom/xueqiu/android/community/a/h;-><init>()V

    .line 56
    const v0, 0x7f0e01fa

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/h;->a:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0e0130

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/h;->b:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0e0215

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/community/a/h;->c:Landroid/view/View;

    .line 59
    const v0, 0x7f0e0219

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/community/a/h;->d:Landroid/view/View;

    .line 60
    const v0, 0x7f0e0218

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/community/a/h;->e:Landroid/view/View;

    .line 61
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 66
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/LiveNews;

    .line 67
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->a:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/xueqiu/android/community/a/g;->e:Ljava/text/DateFormat;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getCreatedAt()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1089
    iget-object v7, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 2054
    invoke-static {v6, v7, v4}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v6

    .line 68
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2121
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/a/g;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_2

    :cond_0
    move v1, v4

    .line 70
    :goto_1
    if-eqz v1, :cond_4

    .line 71
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->d:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2136
    :goto_2
    if-lez p1, :cond_5

    .line 2139
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/LiveNews;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    .line 2140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2141
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2143
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/LiveNews;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    .line 2144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 2145
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2147
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v1, v6, :cond_5

    move v1, v3

    .line 76
    :goto_3
    if-eqz v1, :cond_7

    .line 77
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->c:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/LiveNews;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 81
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 82
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 83
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->c:Landroid/view/View;

    const v6, 0x7f0e0216

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v6, 0xa

    if-le v3, v6, :cond_6

    .line 84
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_5
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->isImportant()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 90
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->e:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->b:Landroid/widget/TextView;

    const v3, 0x7f0d010a

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :goto_6
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/xueqiu/android/community/a/g$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/a/g$1;-><init>(Lcom/xueqiu/android/community/a/g;Lcom/xueqiu/android/community/model/LiveNews;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-object v5

    .line 63
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/h;

    move-object v2, v0

    goto/16 :goto_0

    .line 2124
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/LiveNews;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    .line 2125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2126
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2128
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/LiveNews;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    .line 2129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 2130
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2132
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v1, v6, :cond_3

    move v1, v3

    goto/16 :goto_1

    :cond_3
    move v1, v4

    goto/16 :goto_1

    .line 73
    :cond_4
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->d:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    move v1, v4

    .line 2147
    goto/16 :goto_3

    .line 84
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 86
    :cond_7
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->c:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 93
    :cond_8
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->e:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v1, v2, Lcom/xueqiu/android/community/a/h;->b:Landroid/widget/TextView;

    const v3, 0x7f0d010c

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6
.end method
