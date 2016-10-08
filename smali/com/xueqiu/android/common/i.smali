.class public Lcom/xueqiu/android/common/i;
.super Lcom/xueqiu/android/common/c;
.source "InterestedTopicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/xueqiu/android/common/j;

.field private ak:Landroid/os/Handler;

.field private al:Z

.field private am:Z

.field private an:Lcom/xueqiu/android/common/widget/FlowLayout;

.field private ao:Ljava/lang/String;

.field private ap:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/xueqiu/android/common/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/i;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/i;->d:Ljava/util/List;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/i;->ak:Landroid/os/Handler;

    .line 60
    iput-boolean v1, p0, Lcom/xueqiu/android/common/i;->al:Z

    .line 61
    iput-boolean v1, p0, Lcom/xueqiu/android/common/i;->am:Z

    .line 292
    return-void
.end method

.method private C()V
    .locals 4

    .prologue
    .line 149
    sget-object v0, Lcom/xueqiu/android/common/i;->b:Ljava/lang/String;

    const-string v1, "playShowAnim"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->ak:Landroid/os/Handler;

    new-instance v1, Lcom/xueqiu/android/common/i$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/i$2;-><init>(Lcom/xueqiu/android/common/i;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method

.method private D()Ljava/lang/String;
    .locals 4

    .prologue
    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 299
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 307
    :cond_2
    sget-object v0, Lcom/xueqiu/android/common/i;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSelectedTopics result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/i;)Lcom/xueqiu/android/common/widget/FlowLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->an:Lcom/xueqiu/android/common/widget/FlowLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/i;Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 10174
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/i;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 10175
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 10178
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 10179
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->ap:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b7

    iget-object v4, p0, Lcom/xueqiu/android/common/i;->an:Lcom/xueqiu/android/common/widget/FlowLayout;

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 10180
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/InterestTopic;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/InterestTopic;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 10181
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/InterestTopic;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/InterestTopic;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 10182
    iget-object v1, p0, Lcom/xueqiu/android/common/i;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10178
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 10185
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 10187
    iget-object v2, p0, Lcom/xueqiu/android/common/i;->an:Lcom/xueqiu/android/common/widget/FlowLayout;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/widget/FlowLayout;->addView(Landroid/view/View;)V

    .line 10188
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/common/i;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/i;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/i;)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/i;->al:Z

    return v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/i;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/xueqiu/android/common/i;->am:Z

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/i;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/xueqiu/android/common/i;->C()V

    return-void
.end method

.method static synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/xueqiu/android/common/i;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    sget-object v0, Lcom/xueqiu/android/common/i;->b:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->c:Landroid/view/View;

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/xueqiu/android/common/i;->ap:Landroid/view/LayoutInflater;

    .line 77
    const v0, 0x7f030143

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/i;->c:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/xueqiu/android/common/i;->c:Landroid/view/View;

    .line 2083
    const v0, 0x7f0e04e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/FlowLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/i;->an:Lcom/xueqiu/android/common/widget/FlowLayout;

    .line 2084
    const v0, 0x7f0e030e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/i;->h:Landroid/widget/LinearLayout;

    .line 2085
    const v0, 0x7f0e04e2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/i;->e:Landroid/widget/TextView;

    .line 2086
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 3193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 2087
    if-eqz v0, :cond_1

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 4186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 2088
    if-nez v0, :cond_1

    .line 2089
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->e:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2093
    :goto_1
    const v0, 0x7f0e04e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/i;->f:Landroid/widget/TextView;

    .line 2094
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2095
    const v0, 0x7f0e04e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/i;->g:Landroid/widget/TextView;

    .line 2096
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->c:Landroid/view/View;

    goto :goto_0

    .line 2091
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    sget-object v0, Lcom/xueqiu/android/common/i;->b:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->c(Landroid/os/Bundle;)V

    .line 5108
    invoke-virtual {p0}, Lcom/xueqiu/android/common/i;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 5112
    new-instance v1, Lcom/xueqiu/android/common/i$1;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/common/i$1;-><init>(Lcom/xueqiu/android/common/i;Lcom/xueqiu/android/base/b/q;)V

    .line 5212
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/an;->f(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 104
    return-void
.end method

.method public final c_(Z)V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->c_(Z)V

    .line 170
    sget-object v0, Lcom/xueqiu/android/common/i;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHiddenChanged hidden = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 141
    iget-boolean v0, p0, Lcom/xueqiu/android/common/i;->al:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/xueqiu/android/common/i;->C()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/i;->am:Z

    .line 145
    :cond_0
    sget-object v0, Lcom/xueqiu/android/common/i;->b:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 242
    if-eqz p2, :cond_0

    .line 243
    const v0, 0x7f020423

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xa28

    invoke-direct {v1, v2, v6}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 245
    const-string v2, "topic_name"

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 246
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 250
    :goto_0
    invoke-static {v7}, Lcom/xueqiu/android/base/r;->i(I)I

    move-result v1

    .line 251
    invoke-static {v7}, Lcom/xueqiu/android/base/r;->i(I)I

    move-result v2

    .line 250
    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 252
    invoke-virtual {p1, v4, v4, v0, v4}, Landroid/widget/CompoundButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {p0}, Lcom/xueqiu/android/common/i;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f04001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 254
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9270
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9271
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->g:Landroid/widget/TextView;

    const v1, 0x7f0d0134

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    return-void

    .line 248
    :cond_0
    const v0, 0x7f02005f

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/16 v4, 0xa28

    const/4 v2, 0x1

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 196
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    const-string v1, "extra_mode"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 198
    const-string v1, "extra_need_back"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/i;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/i;->a(Landroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/xueqiu/android/common/i;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/xueqiu/android/common/i;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 205
    :cond_1
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v4, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 206
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/i;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/xueqiu/android/common/i;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 212
    :cond_2
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v4, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 7053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 216
    :pswitch_3
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v4, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 8053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 218
    invoke-direct {p0}, Lcom/xueqiu/android/common/i;->D()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/xueqiu/android/common/i;->a:Lcom/xueqiu/android/common/j;

    if-eqz v1, :cond_0

    .line 8197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 224
    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/xueqiu/android/common/i;->a:Lcom/xueqiu/android/common/j;

    invoke-interface {v1, v0, v2}, Lcom/xueqiu/android/common/j;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/common/i;->ao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 230
    iput-object v0, p0, Lcom/xueqiu/android/common/i;->ao:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->a:Lcom/xueqiu/android/common/j;

    iget-object v1, p0, Lcom/xueqiu/android/common/i;->ao:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/common/j;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/i;->a:Lcom/xueqiu/android/common/j;

    iget-object v1, p0, Lcom/xueqiu/android/common/i;->ao:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/common/j;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e04e2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
