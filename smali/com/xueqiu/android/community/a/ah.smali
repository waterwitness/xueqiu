.class public Lcom/xueqiu/android/community/a/ah;
.super Landroid/widget/BaseAdapter;
.source "SearchUserAdapter.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;

.field private d:Lcom/d/a/b/f;

.field private e:Lcom/d/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/xueqiu/android/community/a/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/community/a/ah;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const v2, 0x7f020488

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ah;->e:Lcom/d/a/b/d;

    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ah;->c:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    .line 51
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ah;->d:Lcom/d/a/b/f;

    .line 52
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 53
    invoke-virtual {v0, v1}, Lcom/d/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/e;

    move-result-object v0

    sget v1, Lcom/d/a/b/a/e;->e:I

    .line 1376
    iput v1, v0, Lcom/d/a/b/e;->j:I

    .line 2270
    iput v2, v0, Lcom/d/a/b/e;->b:I

    .line 3248
    iput v2, v0, Lcom/d/a/b/e;->a:I

    .line 3293
    iput v2, v0, Lcom/d/a/b/e;->c:I

    .line 57
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ah;->e:Lcom/d/a/b/d;

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    .line 62
    invoke-virtual {p0}, Lcom/xueqiu/android/community/a/ah;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "type_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 91
    :cond_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_3
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    const/4 v0, 0x3

    goto :goto_0

    .line 100
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 160
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/ah;->getItemViewType(I)I

    move-result v3

    .line 112
    if-nez p2, :cond_5

    .line 113
    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_3

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030098

    invoke-virtual {v0, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 115
    new-instance v2, Lcom/xueqiu/android/community/a/ai;

    invoke-direct {v2, v6}, Lcom/xueqiu/android/community/a/ai;-><init>(B)V

    .line 116
    const v0, 0x7f0e011c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ai;->a:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f0e0260

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ai;->b:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0e0120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ai;->c:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0e0285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ai;->d:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    move-object v1, p2

    .line 137
    :goto_1
    if-nez v3, :cond_8

    .line 138
    iget-object v2, v0, Lcom/xueqiu/android/community/a/aj;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "title_key"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    move-object v0, v1

    .line 160
    goto :goto_0

    .line 121
    :cond_3
    if-nez v3, :cond_4

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030099

    invoke-virtual {v0, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 123
    new-instance v2, Lcom/xueqiu/android/community/a/aj;

    invoke-direct {v2, v6}, Lcom/xueqiu/android/community/a/aj;-><init>(B)V

    .line 124
    const v0, 0x7f0e0286

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/aj;->a:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    move-object v2, v1

    move-object v1, p2

    goto :goto_1

    .line 126
    :cond_4
    const/4 v0, 0x1

    if-ne v3, v0, :cond_c

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030097

    invoke-virtual {v0, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v2, v1

    move-object v0, v1

    move-object v1, p2

    goto :goto_1

    .line 130
    :cond_5
    if-eq v3, v4, :cond_6

    if-ne v3, v5, :cond_7

    .line 131
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/ai;

    move-object v2, v0

    move-object v0, v1

    move-object v1, p2

    goto :goto_1

    .line 132
    :cond_7
    if-nez v3, :cond_c

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/aj;

    move-object v2, v1

    move-object v1, p2

    goto :goto_1

    .line 139
    :cond_8
    if-ne v3, v4, :cond_a

    .line 140
    iget-object v3, v2, Lcom/xueqiu/android/community/a/ai;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "name_key"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "description"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 142
    if-nez v3, :cond_9

    .line 143
    iget-object v3, v2, Lcom/xueqiu/android/community/a/ai;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_3
    iget-object v3, p0, Lcom/xueqiu/android/community/a/ah;->d:Lcom/d/a/b/f;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "profile_image"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v2, Lcom/xueqiu/android/community/a/ai;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/xueqiu/android/community/a/ah;->e:Lcom/d/a/b/d;

    invoke-virtual {v3, v0, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 148
    iget-object v0, v2, Lcom/xueqiu/android/community/a/ai;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 145
    :cond_9
    iget-object v3, v2, Lcom/xueqiu/android/community/a/ai;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "verified_description"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 149
    :cond_a
    if-ne v3, v5, :cond_2

    .line 150
    iget-object v3, v2, Lcom/xueqiu/android/community/a/ai;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "name_key"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "description"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 152
    if-nez v3, :cond_b

    .line 153
    iget-object v3, v2, Lcom/xueqiu/android/community/a/ai;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_4
    iget-object v3, p0, Lcom/xueqiu/android/community/a/ah;->d:Lcom/d/a/b/f;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "profile_image"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v2, Lcom/xueqiu/android/community/a/ai;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/xueqiu/android/community/a/ah;->e:Lcom/d/a/b/d;

    invoke-virtual {v3, v0, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 158
    iget-object v0, v2, Lcom/xueqiu/android/community/a/ai;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 155
    :cond_b
    iget-object v3, v2, Lcom/xueqiu/android/community/a/ai;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "verified_description"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_c
    move-object v2, v1

    move-object v0, v1

    move-object v1, p2

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x4

    return v0
.end method
