.class public final Landroid/support/v7/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/support/v7/c/b;


# static fields
.field static final a:Landroid/support/v7/widget/aq;


# instance fields
.field private A:Landroid/os/Bundle;

.field private B:Ljava/lang/Runnable;

.field private C:Ljava/lang/Runnable;

.field private D:Ljava/lang/Runnable;

.field private final E:Landroid/content/Intent;

.field private final F:Landroid/content/Intent;

.field private final G:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/v7/widget/as;

.field private c:Landroid/support/v7/widget/ar;

.field private d:Landroid/view/View$OnFocusChangeListener;

.field private e:Landroid/support/v7/widget/at;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Z

.field private h:Z

.field private i:Landroid/support/v4/widget/a;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private q:Landroid/widget/ImageView;

.field private r:Z

.field private s:Ljava/lang/CharSequence;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Landroid/app/SearchableInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Landroid/support/v7/widget/aq;

    invoke-direct {v0}, Landroid/support/v7/widget/aq;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/aq;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1015
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->g:Z

    if-nez v0, :cond_0

    .line 1023
    :goto_0
    return-object p1

    .line 1017
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1018
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1019
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getSearchIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1020
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 1021
    invoke-virtual {v1, v6, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1022
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v0

    .line 1023
    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 779
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->h:Z

    .line 781
    if-eqz p1, :cond_4

    move v0, v1

    .line 783
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    .line 785
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6817
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->r:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v3, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->w:Z

    if-nez v0, :cond_e

    :cond_0
    move v0, v1

    .line 6821
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 787
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/view/View;

    if-eqz p1, :cond_6

    move v0, v2

    :goto_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/widget/ImageView;

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->g:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_4
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6835
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move v5, v4

    .line 6838
    :goto_5
    if-nez v5, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->g:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-nez v0, :cond_9

    :cond_1
    move v0, v4

    .line 6839
    :goto_6
    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6840
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v5, :cond_b

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_8
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 790
    if-nez v3, :cond_c

    .line 7091
    :goto_9
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->w:Z

    if-eqz v0, :cond_d

    .line 7641
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->h:Z

    .line 7091
    if-nez v0, :cond_d

    if-eqz v4, :cond_d

    .line 7093
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 7095
    :goto_a
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7826
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v2, v1

    .line 7831
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 792
    return-void

    :cond_4
    move v0, v2

    .line 781
    goto/16 :goto_0

    :cond_5
    move v3, v1

    .line 783
    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 787
    goto :goto_3

    :cond_7
    move v0, v1

    .line 788
    goto :goto_4

    :cond_8
    move v5, v1

    .line 6835
    goto :goto_5

    :cond_9
    move v0, v1

    .line 6838
    goto :goto_6

    :cond_a
    move v0, v2

    .line 6839
    goto :goto_7

    .line 6840
    :cond_b
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_8

    :cond_c
    move v4, v1

    .line 790
    goto :goto_9

    :cond_d
    move v0, v2

    goto :goto_a

    :cond_e
    move v0, v2

    goto/16 :goto_2
.end method

.method static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->w:Z

    if-eqz v0, :cond_1

    .line 8641
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->h:Z

    .line 812
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->C:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 845
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->s:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_3

    .line 1030
    const/4 v0, 0x0

    .line 1031
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 1032
    if-eqz v1, :cond_2

    .line 1033
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1035
    :cond_2
    if-eqz v0, :cond_0

    .line 1036
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1039
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/e;->abc_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSearchIconId()I
    .locals 4

    .prologue
    .line 1008
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1009
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/b/c;->searchViewSearchIcon:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1010
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method

.method private setImeVisibility(Z)V
    .locals 3

    .prologue
    .line 862
    if-eqz p1, :cond_1

    .line 863
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 866
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 869
    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1226
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-eqz v0, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1228
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z

    .line 1229
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->y:I

    .line 1230
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->y:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1231
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 1215
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1216
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1217
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->y:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1218
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z

    .line 1219
    return-void
.end method

.method final c()V
    .locals 3

    .prologue
    .line 1194
    .line 9641
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->h:Z

    .line 1194
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1197
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->e()V

    .line 1198
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10560
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/aq;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 10743
    iget-object v2, v0, Landroid/support/v7/widget/aq;->a:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 10745
    :try_start_0
    iget-object v0, v0, Landroid/support/v7/widget/aq;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10561
    :cond_0
    :goto_0
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/aq;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 10752
    iget-object v2, v0, Landroid/support/v7/widget/aq;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 10754
    :try_start_1
    iget-object v0, v0, Landroid/support/v7/widget/aq;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 10756
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->u:Z

    .line 469
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 470
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 472
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->u:Z

    .line 473
    return-void
.end method

.method public final getImeOptions()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public final getInputType()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Landroid/support/v7/widget/SearchView;->v:I

    return v0
.end method

.method public final getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 574
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->s:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 575
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Ljava/lang/CharSequence;

    .line 584
    :cond_0
    :goto_0
    return-object v0

    .line 576
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 579
    if-eqz v1, :cond_0

    .line 580
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSuggestionsAdapter()Landroid/support/v4/widget/a;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v4/widget/a;

    return-object v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->C:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 857
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 858
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 859
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    .line 912
    const/4 v0, 0x0

    .line 915
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 741
    .line 6641
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->h:Z

    .line 741
    if-eqz v0, :cond_0

    .line 742
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 771
    :goto_0
    return-void

    .line 746
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 747
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 749
    sparse-switch v1, :sswitch_data_0

    .line 770
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 752
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/SearchView;->v:I

    if-lez v1, :cond_2

    .line 753
    iget v1, p0, Landroid/support/v7/widget/SearchView;->v:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 755
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 760
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/SearchView;->v:I

    if-lez v1, :cond_1

    .line 761
    iget v1, p0, Landroid/support/v7/widget/SearchView;->v:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 766
    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/SearchView;->v:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SearchView;->v:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_1

    .line 749
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1205
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1207
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->e()V

    .line 1208
    return-void
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 450
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->u:Z

    if-eqz v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4641
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->h:Z

    .line 454
    if-nez v1, :cond_3

    .line 455
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 456
    if-eqz v1, :cond_2

    .line 457
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    :cond_2
    move v0, v1

    .line 459
    goto :goto_0

    .line 461
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->A:Landroid/os/Bundle;

    .line 399
    return-void
.end method

.method public final setIconified(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 627
    if-eqz p1, :cond_3

    .line 5142
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 5143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5144
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->g:Z

    if-eqz v0, :cond_1

    .line 5146
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/ar;

    invoke-interface {v0}, Landroid/support/v7/widget/ar;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5148
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 5150
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->a(Z)V

    :cond_1
    :goto_0
    return-void

    .line 5154
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 5155
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 5156
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0

    .line 5162
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 5163
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 5164
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 5165
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 5166
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final setIconifiedByDefault(Z)V
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->g:Z

    if-ne v0, p1, :cond_0

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->g:Z

    .line 602
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 603
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()V

    goto :goto_0
.end method

.method public final setImeOptions(I)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 411
    return-void
.end method

.method public final setInputType(I)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 434
    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 0

    .prologue
    .line 722
    iput p1, p0, Landroid/support/v7/widget/SearchView;->v:I

    .line 724
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    .line 725
    return-void
.end method

.method public final setOnCloseListener(Landroid/support/v7/widget/ar;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/ar;

    .line 492
    return-void
.end method

.method public final setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/view/View$OnFocusChangeListener;

    .line 501
    return-void
.end method

.method public final setOnQueryTextListener(Landroid/support/v7/widget/as;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/as;

    .line 483
    return-void
.end method

.method public final setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View$OnClickListener;

    .line 522
    return-void
.end method

.method public final setOnSuggestionListener(Landroid/support/v7/widget/at;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/support/v7/widget/at;

    .line 510
    return-void
.end method

.method final setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1374
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1377
    return-void

    .line 1376
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public final setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->s:Ljava/lang/CharSequence;

    .line 564
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()V

    .line 565
    return-void
.end method

.method public final setQueryRefinementEnabled(Z)V
    .locals 2

    .prologue
    .line 681
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->t:Z

    .line 682
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v4/widget/a;

    instance-of v0, v0, Landroid/support/v7/widget/au;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v4/widget/a;

    check-cast v0, Landroid/support/v7/widget/au;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 6116
    :goto_0
    iput v1, v0, Landroid/support/v7/widget/au;->j:I

    .line 686
    :cond_0
    return-void

    .line 683
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x10000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 376
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_3

    .line 2047
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 2048
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 2049
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 2052
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 2055
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 2056
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2057
    or-int/2addr v0, v7

    .line 2064
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 2067
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 2068
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v4/widget/a;

    if-eqz v0, :cond_1

    .line 2069
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v4/widget/a;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/a;->a(Landroid/database/Cursor;)V

    .line 2073
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2074
    new-instance v0, Landroid/support/v7/widget/au;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->G:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v5, v6}, Landroid/support/v7/widget/au;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v4/widget/a;

    .line 2076
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v4/widget/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2077
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v4/widget/a;

    check-cast v0, Landroid/support/v7/widget/au;

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->t:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    .line 2116
    :goto_0
    iput v1, v0, Landroid/support/v7/widget/au;->j:I

    .line 379
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()V

    .line 2795
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2797
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2798
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/content/Intent;

    .line 2802
    :goto_1
    if-eqz v0, :cond_8

    .line 2803
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2805
    if-eqz v0, :cond_7

    .line 382
    :goto_2
    iput-boolean v2, p0, Landroid/support/v7/widget/SearchView;->w:Z

    .line 384
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->w:Z

    if-eqz v0, :cond_4

    .line 387
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3641
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->h:Z

    .line 389
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 390
    return-void

    :cond_5
    move v1, v2

    .line 2077
    goto :goto_0

    .line 2799
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2800
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->F:Landroid/content/Intent;

    goto :goto_1

    :cond_7
    move v2, v3

    .line 2805
    goto :goto_2

    :cond_8
    move v2, v3

    .line 2808
    goto :goto_2

    :cond_9
    move-object v0, v4

    goto :goto_1
.end method

.method public final setSubmitButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 653
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->r:Z

    .line 5641
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->h:Z

    .line 654
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 655
    return-void
.end method

.method public final setSuggestionsAdapter(Landroid/support/v4/widget/a;)V
    .locals 2

    .prologue
    .line 703
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v4/widget/a;

    .line 705
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v4/widget/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 706
    return-void
.end method
