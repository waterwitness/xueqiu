.class public final Lcom/xueqiu/android/trade/patternlock/k;
.super Lcom/xueqiu/android/trade/patternlock/a;
.source "SetPatternFragment.java"

# interfaces
.implements Lcom/xueqiu/android/trade/patternlock/i;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/patternlock/f;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/xueqiu/android/trade/patternlock/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/xueqiu/android/trade/patternlock/a;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/patternlock/k;Lcom/xueqiu/android/trade/patternlock/n;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/patternlock/k;->a(Lcom/xueqiu/android/trade/patternlock/n;)V

    return-void
.end method

.method private a(Lcom/xueqiu/android/trade/patternlock/n;)V
    .locals 5

    .prologue
    .line 180
    iput-object p1, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    .line 1233
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/k;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->c:Landroid/os/Handler;

    .line 1236
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/n;->a:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/patternlock/k;->a(Lcom/xueqiu/android/trade/patternlock/n;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/n;->b:Lcom/xueqiu/android/trade/patternlock/n;

    if-ne v0, v1, :cond_2

    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    iget v1, v1, Lcom/xueqiu/android/trade/patternlock/n;->f:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xueqiu/android/trade/patternlock/k;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xueqiu/android/trade/patternlock/k;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/n;->b:Lcom/xueqiu/android/trade/patternlock/n;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/n;->d:Lcom/xueqiu/android/trade/patternlock/n;

    if-ne v0, v1, :cond_4

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/k;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    iget-boolean v1, v1, Lcom/xueqiu/android/trade/patternlock/n;->i:Z

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setInputEnabled(Z)V

    .line 203
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/k$2;->a:[I

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/patternlock/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_2
    return-void

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/n;->a:Lcom/xueqiu/android/trade/patternlock/n;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/k;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/trade/patternlock/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->a:Landroid/widget/TextView;

    const v1, 0x7f070285

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    iget v1, v1, Lcom/xueqiu/android/trade/patternlock/n;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/k;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    .line 1443
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a()V

    goto :goto_2

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/h;->c:Lcom/xueqiu/android/trade/patternlock/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setDisplayMode(Lcom/xueqiu/android/trade/patternlock/h;)V

    .line 210
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/k;->u()V

    goto :goto_2

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    .line 2443
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a()V

    goto :goto_2

    .line 216
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/h;->c:Lcom/xueqiu/android/trade/patternlock/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setDisplayMode(Lcom/xueqiu/android/trade/patternlock/h;)V

    .line 217
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/k;->u()V

    .line 3241
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->c:Landroid/os/Handler;

    .line 3242
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/k$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/patternlock/k$1;-><init>(Lcom/xueqiu/android/trade/patternlock/k;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->d:Ljava/lang/Runnable;

    .line 3248
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/k;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 3257
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/k;->g()Landroid/support/v4/a/k;

    move-result-object v1

    .line 4030
    const-string v2, "pref_key_pattern_sha1"

    .line 4031
    invoke-static {v0}, Lcom/xueqiu/android/trade/patternlock/e;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 4030
    invoke-static {v2, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 3259
    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 3261
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/k;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->setResult(I)V

    .line 3262
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/k;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    goto/16 :goto_2

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static v()Lcom/xueqiu/android/trade/patternlock/k;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/k;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/patternlock/k;-><init>()V

    .line 97
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/xueqiu/android/trade/patternlock/a;->a(Landroid/os/Bundle;)V

    .line 103
    const/4 v0, 0x4

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->e:I

    .line 104
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/trade/patternlock/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setOnPatternListener(Lcom/xueqiu/android/trade/patternlock/i;)V

    .line 110
    const v0, 0x7f0e00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    if-nez p2, :cond_0

    .line 113
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/n;->a:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/patternlock/k;->a(Lcom/xueqiu/android/trade/patternlock/n;)V

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "pattern"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    invoke-static {v0}, Lcom/xueqiu/android/trade/patternlock/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->f:Ljava/util/List;

    .line 119
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/trade/patternlock/n;->values()[Lcom/xueqiu/android/trade/patternlock/n;

    move-result-object v0

    const-string v1, "stage"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/patternlock/k;->a(Lcom/xueqiu/android/trade/patternlock/n;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/patternlock/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/k$2;->a:[I

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/patternlock/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected stage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when entering the pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/trade/patternlock/k;->e:I

    if-ge v0, v1, :cond_0

    .line 152
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/n;->b:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/patternlock/k;->a(Lcom/xueqiu/android/trade/patternlock/n;)V

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->f:Ljava/util/List;

    .line 155
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/n;->c:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/patternlock/k;->a(Lcom/xueqiu/android/trade/patternlock/n;)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/n;->e:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/patternlock/k;->a(Lcom/xueqiu/android/trade/patternlock/n;)V

    goto :goto_0

    .line 163
    :cond_1
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/n;->d:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/patternlock/k;->a(Lcom/xueqiu/android/trade/patternlock/n;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/xueqiu/android/trade/patternlock/a;->d(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "stage"

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/k;->g:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/patternlock/n;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "pattern"

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/k;->f:Ljava/util/List;

    invoke-static {v1}, Lcom/xueqiu/android/trade/patternlock/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/k;->b()V

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->a:Landroid/widget/TextView;

    const v1, 0x7f070288

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/h;->a:Lcom/xueqiu/android/trade/patternlock/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setDisplayMode(Lcom/xueqiu/android/trade/patternlock/h;)V

    .line 140
    return-void
.end method

.method public final x()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/k;->b()V

    .line 175
    return-void
.end method
