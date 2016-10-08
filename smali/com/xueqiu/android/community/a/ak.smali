.class public Lcom/xueqiu/android/community/a/ak;
.super Lcom/xueqiu/android/common/a/d;
.source "StatusListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String;


# instance fields
.field private A:Lcom/d/a/b/d;

.field private B:Lcom/d/a/b/d;

.field private C:Lcom/d/a/b/d;

.field private D:Lcom/d/a/b/f/d;

.field private E:Lcom/d/a/b/d;

.field private F:Landroid/view/View$OnClickListener;

.field e:Landroid/app/Activity;

.field public f:Lcom/xueqiu/android/base/util/ar;

.field public g:Lcom/xueqiu/android/community/l;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendStock;",
            ">;>;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:F

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private y:Lcom/xueqiu/android/community/a/be;

.field private z:Lcom/d/a/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/community/a/ak;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const v6, 0x7f02028b

    const v5, 0x7f020208

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 206
    const v0, 0x7f030080

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 123
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/xueqiu/android/community/a/ak;->o:F

    .line 124
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->p:Ljava/lang/ref/WeakReference;

    .line 125
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->q:Ljava/lang/ref/WeakReference;

    .line 127
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->r:Ljava/lang/ref/WeakReference;

    .line 128
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->s:Ljava/lang/ref/WeakReference;

    .line 129
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->t:Ljava/lang/ref/WeakReference;

    .line 130
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->u:Ljava/lang/ref/WeakReference;

    .line 131
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->v:Ljava/lang/ref/WeakReference;

    .line 132
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->w:Ljava/lang/ref/WeakReference;

    .line 134
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->x:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 138
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->y:Lcom/xueqiu/android/community/a/be;

    .line 141
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->A:Lcom/d/a/b/d;

    .line 142
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->B:Lcom/d/a/b/d;

    .line 143
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->C:Lcom/d/a/b/d;

    .line 144
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->D:Lcom/d/a/b/f/d;

    .line 146
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->E:Lcom/d/a/b/d;

    .line 148
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->f:Lcom/xueqiu/android/base/util/ar;

    .line 152
    iput-boolean v4, p0, Lcom/xueqiu/android/community/a/ak;->h:Z

    .line 1260
    new-instance v0, Lcom/xueqiu/android/community/a/ak$16;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ak$16;-><init>(Lcom/xueqiu/android/community/a/ak;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ak;->F:Landroid/view/View$OnClickListener;

    .line 208
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    .line 209
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/xueqiu/android/community/a/ak$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/ak$1;-><init>(Lcom/xueqiu/android/community/a/ak;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->x:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 220
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak;->x:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 222
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2089
    iget-object v2, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 222
    const v3, 0x7f070164

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/a/ak;->o:F

    .line 224
    new-instance v0, Lcom/xueqiu/android/community/a/ak$12;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ak$12;-><init>(Lcom/xueqiu/android/community/a/ak;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/a/ak;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 239
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f020490

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->r:Ljava/lang/ref/WeakReference;

    .line 241
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f020491

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->s:Ljava/lang/ref/WeakReference;

    .line 242
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f020281

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->t:Ljava/lang/ref/WeakReference;

    .line 243
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f02048e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->u:Ljava/lang/ref/WeakReference;

    .line 244
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f020492

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->v:Ljava/lang/ref/WeakReference;

    .line 245
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f020493

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->w:Ljava/lang/ref/WeakReference;

    .line 4089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 247
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 248
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 250
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/a/ak;->p:Ljava/lang/ref/WeakReference;

    .line 251
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/a/ak;->q:Ljava/lang/ref/WeakReference;

    .line 253
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->z:Lcom/d/a/b/f;

    .line 255
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 256
    invoke-virtual {v1, v2}, Lcom/d/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/e;

    move-result-object v1

    sget v2, Lcom/d/a/b/a/e;->e:I

    .line 4376
    iput v2, v1, Lcom/d/a/b/e;->j:I

    .line 5258
    iput-object v0, v1, Lcom/d/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 5281
    iput-object v0, v1, Lcom/d/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ak;->A:Lcom/d/a/b/d;

    .line 262
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 263
    invoke-virtual {v0, v1}, Lcom/d/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/e;

    move-result-object v0

    sget v1, Lcom/d/a/b/a/e;->e:I

    .line 5376
    iput v1, v0, Lcom/d/a/b/e;->j:I

    .line 6270
    iput v6, v0, Lcom/d/a/b/e;->b:I

    .line 7248
    iput v6, v0, Lcom/d/a/b/e;->a:I

    .line 7293
    iput v6, v0, Lcom/d/a/b/e;->c:I

    .line 268
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ak;->C:Lcom/d/a/b/d;

    .line 270
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 271
    invoke-virtual {v0, v1}, Lcom/d/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/e;

    move-result-object v0

    sget v1, Lcom/d/a/b/a/e;->e:I

    .line 7376
    iput v1, v0, Lcom/d/a/b/e;->j:I

    .line 8293
    iput v5, v0, Lcom/d/a/b/e;->c:I

    .line 9270
    iput v5, v0, Lcom/d/a/b/e;->b:I

    .line 10248
    iput v5, v0, Lcom/d/a/b/e;->a:I

    .line 275
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x41900000    # 18.0f

    .line 276
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 10445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 277
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ak;->E:Lcom/d/a/b/d;

    .line 279
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 280
    invoke-virtual {v0, v1}, Lcom/d/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/e;

    move-result-object v0

    sget v1, Lcom/d/a/b/a/e;->e:I

    .line 11376
    iput v1, v0, Lcom/d/a/b/e;->j:I

    .line 282
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ak;->B:Lcom/d/a/b/d;

    .line 284
    new-instance v0, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/o;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ak;->D:Lcom/d/a/b/f/d;

    .line 286
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ak;->f:Lcom/xueqiu/android/base/util/ar;

    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    check-cast v0, Lcom/xueqiu/android/common/b;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.action.statusAnswerComplete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/a/ak$23;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/a/ak$23;-><init>(Lcom/xueqiu/android/community/a/ak;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->a(Lrx/j;)V

    .line 302
    return-void

    .line 247
    :array_0
    .array-data 4
        0x7f010139
        0x7f01013a
        0x7f0100be
    .end array-data
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/ak;F)F
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/xueqiu/android/community/a/ak;->o:F

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/model/User;)I
    .locals 1

    .prologue
    .line 119
    .line 50272
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50273
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->isFollowMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50274
    const v0, 0x7f020147

    .line 119
    :goto_0
    return v0

    .line 50276
    :cond_0
    const v0, 0x7f020146

    goto :goto_0

    .line 50279
    :cond_1
    const v0, 0x7f020145

    goto :goto_0
.end method

.method private a(Landroid/view/View;I)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1609
    invoke-virtual {p0, p2}, Lcom/xueqiu/android/community/a/ak;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 1610
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRecommendStatusCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v5

    .line 1611
    invoke-direct {p0, p1, p2, v5}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;ILcom/xueqiu/android/community/model/RecommendCard;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1614
    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RecommendCard;->getElements()Ljava/util/List;

    move-result-object v6

    .line 1615
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1656
    :cond_0
    return-object v0

    :cond_1
    move v3, v4

    .line 1619
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 1620
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/Status;

    .line 1621
    if-eqz v1, :cond_0

    .line 47089
    iget-object v2, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1625
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030080

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 1626
    invoke-virtual {v7, v8, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1628
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1629
    if-eqz v7, :cond_2

    .line 1630
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1633
    :cond_2
    new-instance v7, Lcom/xueqiu/android/community/a/ak$21;

    invoke-direct {v7, p0, v1, v5}, Lcom/xueqiu/android/community/a/ak$21;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;Lcom/xueqiu/android/community/model/RecommendCard;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1651
    invoke-direct {p0, v1}, Lcom/xueqiu/android/community/a/ak;->c(Lcom/xueqiu/android/community/model/Status;)V

    .line 1652
    invoke-direct {p0, v2, v1}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V

    .line 1653
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1619
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0
.end method

.method private a(Landroid/view/View;ILcom/xueqiu/android/community/model/RecommendCard;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1585
    new-instance v1, Landroid/widget/LinearLayout;

    .line 44089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1585
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1586
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1587
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1588
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1589
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 45089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1591
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03006d

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1592
    const v0, 0x7f0e01e4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {p3}, Lcom/xueqiu/android/community/model/RecommendCard;->getName()Ljava/lang/String;

    move-result-object v3

    .line 46089
    iget-object v4, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1592
    invoke-static {v3, v4}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    const v0, 0x7f0e01e5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1596
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1597
    new-instance v3, Lcom/xueqiu/android/community/a/ak$20;

    invoke-direct {v3, p0, p2, p3}, Lcom/xueqiu/android/community/a/ak$20;-><init>(Lcom/xueqiu/android/community/a/ak;ILcom/xueqiu/android/community/model/RecommendCard;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1603
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1605
    return-object v1
.end method

.method private a(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V
    .locals 17

    .prologue
    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 323
    new-instance v3, Lcom/xueqiu/android/community/a/al;

    invoke-direct {v3}, Lcom/xueqiu/android/community/a/al;-><init>()V

    .line 324
    const v2, 0x7f0e0210

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->a:Landroid/widget/ImageView;

    .line 326
    const v2, 0x7f0e01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->b:Landroid/widget/ImageView;

    .line 327
    const v2, 0x7f0e0228

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->c:Landroid/widget/TextView;

    .line 328
    const v2, 0x7f0e01f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->d:Landroid/widget/TextView;

    .line 329
    const v2, 0x7f0e022a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->e:Landroid/widget/TextView;

    .line 330
    const v2, 0x7f0e022b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 331
    const v2, 0x7f0e022c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->g:Landroid/widget/ImageView;

    .line 332
    const v2, 0x7f0e0239

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->h:Landroid/widget/TextView;

    .line 333
    const v2, 0x7f0e0206

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->i:Landroid/widget/TextView;

    .line 335
    const v2, 0x7f0e023c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->j:Landroid/widget/TextView;

    .line 336
    const v2, 0x7f0e023d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->k:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 337
    const v2, 0x7f0e023e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->l:Landroid/widget/ImageView;

    .line 338
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    const v2, 0x7f0e0243

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->q:Landroid/view/View;

    .line 340
    const v2, 0x7f0e0245

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->r:Landroid/view/View;

    .line 341
    const v2, 0x7f0e0247

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->s:Landroid/view/View;

    .line 342
    const v2, 0x7f0e0242

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->t:Landroid/view/View;

    .line 344
    const v2, 0x7f0e021b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->p:Landroid/widget/TextView;

    .line 345
    const v2, 0x7f0e023f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->n:Landroid/widget/TextView;

    .line 346
    const v2, 0x7f0e0204

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->m:Landroid/view/View;

    .line 347
    const v2, 0x7f0e0235

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->u:Landroid/view/View;

    .line 348
    const v2, 0x7f0e0234

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->v:Landroid/view/View;

    .line 349
    const v2, 0x7f0e0236

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    .line 350
    const v2, 0x7f0e0240

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->x:Landroid/widget/LinearLayout;

    .line 351
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->x:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    const v2, 0x7f0e01ed

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->y:Landroid/widget/TextView;

    .line 354
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->g:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/community/a/ak;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->l:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/community/a/ak;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->l:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    const v2, 0x7f0e01fa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->o:Landroid/widget/TextView;

    .line 369
    const v2, 0x7f0e0229

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->z:Landroid/view/View;

    .line 370
    const v2, 0x7f0e0237

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->A:Landroid/view/View;

    .line 371
    const v2, 0x7f0e023b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->B:Landroid/view/View;

    .line 372
    const v2, 0x7f0e023a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/community/a/al;->C:Landroid/view/View;

    .line 375
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 382
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getPreparedShowObj()Lcom/xueqiu/android/community/model/Status$PreparedShowObj;

    move-result-object v5

    .line 384
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    .line 388
    const v2, 0x7f0e0231

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 389
    const v2, 0x7f0e0233

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 390
    const v2, 0x7f0e0203

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 391
    const v2, 0x7f0e0204

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    const v2, 0x7f0e012b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->y:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    :cond_0
    :goto_1
    const v2, 0x7f0e0241

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 704
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    if-eqz v2, :cond_2c

    const-string v2, "rebalancing"

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    iget-object v4, v4, Lcom/xueqiu/android/community/model/Card;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 705
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->x:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 706
    const v2, 0x7f0e0238

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->x:Landroid/widget/LinearLayout;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/community/a/ak;->b(Landroid/widget/LinearLayout;Lcom/xueqiu/android/community/model/Card;)V

    .line 21837
    :goto_2
    return-void

    .line 379
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/a/al;

    move-object v3, v2

    goto/16 :goto_0

    .line 395
    :cond_2
    const v4, 0x7f0e0231

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 396
    const v4, 0x7f0e0233

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 397
    const v4, 0x7f0e0203

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 398
    const v4, 0x7f0e0204

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 399
    const v4, 0x7f0e012b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 400
    if-eqz v2, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/community/a/ak;->z:Lcom/d/a/b/f;

    iget-object v6, v3, Lcom/xueqiu/android/community/a/al;->a:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/android/community/a/ak;->B:Lcom/d/a/b/d;

    new-instance v8, Lcom/xueqiu/android/community/a/ak$32;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lcom/xueqiu/android/community/a/ak$32;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v4, v2, v6, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 419
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 420
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->b:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v2

    .line 422
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->b:Landroid/widget/ImageView;

    .line 12377
    sget-object v6, Lcom/xueqiu/android/community/model/UserVerifyType;->ALALYST:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v2, v6, :cond_7

    .line 12379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->r:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 13089
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 12380
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f020490

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12381
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/xueqiu/android/community/a/ak;->r:Ljava/lang/ref/WeakReference;

    .line 12384
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    :goto_4
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->c:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v4, v6, v7}, Lcom/xueqiu/android/base/util/aw;->a(Lcom/xueqiu/android/community/model/User;Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 429
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->d:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :goto_5
    iget-object v2, v5, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->titleFromHtml:Landroid/text/Spanned;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 435
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->e:Landroid/widget/TextView;

    iget-object v4, v5, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->titleFromHtml:Landroid/text/Spanned;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->e:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    :goto_6
    iget-object v2, v5, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->textFromHtml:Landroid/text/Spanned;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 442
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iget-object v4, v5, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->textFromHtml:Landroid/text/Spanned;

    invoke-virtual {v2, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setVisibility(I)V

    .line 448
    :goto_7
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->e:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/community/a/ak;->o:F

    invoke-virtual {v2, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 449
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/community/a/ak;->o:F

    invoke-virtual {v2, v4, v6}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setTextSize(IF)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 452
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->g:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/widget/ImageView;Lcom/xueqiu/android/community/model/Status;)V

    .line 453
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->g:Landroid/widget/ImageView;

    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->g:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 458
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v6

    .line 459
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getRetweetsCount()I

    move-result v7

    .line 460
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getRewardUserCount()I

    move-result v4

    .line 462
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->s:Landroid/view/View;

    const v8, 0x7f0e0248

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 463
    if-nez v4, :cond_1b

    const v4, 0x7f0702fe

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->f(I)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_9
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->s:Landroid/view/View;

    new-instance v4, Lcom/xueqiu/android/community/a/ak$33;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/xueqiu/android/community/a/ak$33;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    const-string v2, "UNANSWERED"

    invoke-static/range {p2 .. p2}, Lcom/xueqiu/android/base/util/ap;->b(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 486
    invoke-static/range {p2 .. p2}, Lcom/xueqiu/android/base/util/ap;->a(Lcom/xueqiu/android/community/model/Status;)J

    move-result-wide v8

    .line 19069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 19077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v10

    .line 486
    cmp-long v2, v8, v10

    if-nez v2, :cond_1c

    .line 487
    const v2, 0x7f0e012b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->t:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->t:Landroid/view/View;

    new-instance v4, Lcom/xueqiu/android/community/a/ak$34;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/xueqiu/android/community/a/ak$34;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    :goto_a
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->o:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->p:Landroid/widget/TextView;

    iget-object v4, v5, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->sourceLabel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1f

    .line 534
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->z:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->A:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->A:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/community/a/ak;->b(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V

    .line 544
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 545
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    .line 546
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getPreparedShowObj()Lcom/xueqiu/android/community/model/Status$PreparedShowObj;

    move-result-object v4

    .line 548
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 549
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->h:Landroid/widget/TextView;

    new-instance v6, Lcom/xueqiu/android/community/a/ak$37;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2}, Lcom/xueqiu/android/community/a/ak$37;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 566
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->i:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    :goto_c
    iget-object v5, v4, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->titleFromHtml:Landroid/text/Spanned;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 578
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->j:Landroid/widget/TextView;

    iget-object v6, v4, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->titleFromHtml:Landroid/text/Spanned;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->j:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    :goto_d
    iget-object v5, v4, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->textFromHtml:Landroid/text/Spanned;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 584
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->k:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iget-object v4, v4, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->textFromHtml:Landroid/text/Spanned;

    invoke-virtual {v5, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->k:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setVisibility(I)V

    .line 590
    :goto_e
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->j:Landroid/widget/TextView;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/community/a/ak;->o:F

    const v7, 0x3e4ccccd    # 0.2f

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 591
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->k:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/community/a/ak;->o:F

    const v7, 0x3e4ccccd    # 0.2f

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setTextSize(IF)V

    .line 593
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 594
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->l:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/widget/ImageView;Lcom/xueqiu/android/community/model/Status;)V

    .line 595
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->l:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->l:Landroid/widget/ImageView;

    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->l:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 19089
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 601
    const v5, 0x7f0702eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 602
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 601
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 603
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->n:Landroid/widget/TextView;

    new-instance v5, Lcom/xueqiu/android/community/a/ak$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lcom/xueqiu/android/community/a/ak$2;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->m:Landroid/view/View;

    new-instance v5, Lcom/xueqiu/android/community/a/ak$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lcom/xueqiu/android/community/a/ak$3;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->m:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 622
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_25

    .line 623
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->B:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->C:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->C:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/xueqiu/android/community/a/ak;->b(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V

    .line 635
    :goto_10
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->a:Landroid/widget/ImageView;

    new-instance v4, Lcom/xueqiu/android/community/a/ak$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/xueqiu/android/community/a/ak$4;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    .line 20069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 20077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 654
    cmp-long v2, v4, v6

    if-nez v2, :cond_27

    .line 655
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->u:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->v:Landroid/view/View;

    new-instance v4, Lcom/xueqiu/android/community/a/ak$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/xueqiu/android/community/a/ak$5;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20089
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 666
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 667
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_29

    .line 668
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getMarkDesc()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getMarkDesc()Ljava/lang/String;

    move-result-object v2

    :goto_12
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    const v5, 0x7f0200ab

    .line 671
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 670
    invoke-static {v2, v4}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 672
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    const-class v2, Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/community/a/ak;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    :try_start_0
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v4, 0x640

    const/16 v5, 0x1a

    invoke-direct {v2, v4, v5}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 678
    const-string v4, "ad_id"

    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getPromotionId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v4

    .line 679
    invoke-virtual {v4, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 681
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 412
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v2

    sget-object v4, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v2, v4, :cond_6

    .line 413
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->a:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/community/a/ak;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 415
    :cond_6
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->a:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/community/a/ak;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 12386
    :cond_7
    sget-object v6, Lcom/xueqiu/android/community/model/UserVerifyType;->COMPANY:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v2, v6, :cond_a

    .line 12388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->s:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 14089
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 12389
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f020491

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12390
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/xueqiu/android/community/a/ak;->s:Ljava/lang/ref/WeakReference;

    .line 12393
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 12395
    :cond_a
    sget-object v6, Lcom/xueqiu/android/community/model/UserVerifyType;->ADVISER:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v2, v6, :cond_d

    .line 12396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->u:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    .line 15089
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 12397
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f02048e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12398
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/xueqiu/android/community/a/ak;->u:Ljava/lang/ref/WeakReference;

    .line 12401
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 12403
    :cond_d
    sget-object v6, Lcom/xueqiu/android/community/model/UserVerifyType;->STAFF:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v2, v6, :cond_10

    .line 12405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->t:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    .line 16089
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 12406
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f020281

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12407
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/xueqiu/android/community/a/ak;->t:Ljava/lang/ref/WeakReference;

    .line 12410
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 12412
    :cond_10
    sget-object v6, Lcom/xueqiu/android/community/model/UserVerifyType;->TRADING:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v2, v6, :cond_13

    .line 12413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->w:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_12

    .line 17089
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 12414
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f020493

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12415
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/xueqiu/android/community/a/ak;->w:Ljava/lang/ref/WeakReference;

    .line 12417
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 12419
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->v:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    .line 18089
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 12420
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f020492

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12421
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/xueqiu/android/community/a/ak;->v:Ljava/lang/ref/WeakReference;

    .line 12424
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 424
    :cond_16
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->b:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 432
    :cond_17
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->d:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 438
    :cond_18
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->e:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 445
    :cond_19
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 456
    :cond_1a
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 463
    :cond_1b
    invoke-static {v4}, Lcom/xueqiu/android/base/util/au;->a(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 496
    :cond_1c
    const v2, 0x7f0e012b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->t:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->r:Landroid/view/View;

    const v4, 0x7f0e0246

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 500
    if-nez v6, :cond_1d

    const v4, 0x7f07009e

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->f(I)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_13
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->q:Landroid/view/View;

    const v4, 0x7f0e0244

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 503
    if-nez v7, :cond_1e

    const v4, 0x7f0702f8

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->f(I)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_14
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->q:Landroid/view/View;

    new-instance v4, Lcom/xueqiu/android/community/a/ak$35;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/xueqiu/android/community/a/ak$35;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->r:Landroid/view/View;

    new-instance v4, Lcom/xueqiu/android/community/a/ak$36;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/xueqiu/android/community/a/ak$36;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    .line 500
    :cond_1d
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 503
    :cond_1e
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 539
    :cond_1f
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->z:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->A:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 569
    :cond_20
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->i:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 572
    :cond_21
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->h:Landroid/widget/TextView;

    const v6, 0x7f07056a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 573
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->i:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 581
    :cond_22
    iget-object v5, v3, Lcom/xueqiu/android/community/a/al;->j:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d

    .line 587
    :cond_23
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->k:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 598
    :cond_24
    iget-object v4, v3, Lcom/xueqiu/android/community/a/al;->l:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 628
    :cond_25
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->B:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->C:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 632
    :cond_26
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->m:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 663
    :cond_27
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->u:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11

    .line 668
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    const v6, 0x7f0703a6

    .line 669
    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 684
    :cond_29
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2a

    .line 685
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    const v6, 0x7f0703a8

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    const v5, 0x7f0200ab

    .line 687
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 686
    invoke-static {v2, v4}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 688
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 689
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2b

    .line 690
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    const v6, 0x7f0703ac

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    const v5, 0x7f0200ac

    .line 692
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 691
    invoke-static {v2, v4}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 693
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 695
    :cond_2b
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->w:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 708
    :cond_2c
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    if-eqz v2, :cond_2d

    const-string v2, "cube"

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    iget-object v4, v4, Lcom/xueqiu/android/community/model/Card;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 709
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->x:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    const v2, 0x7f0e0238

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->x:Landroid/widget/LinearLayout;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/widget/LinearLayout;Lcom/xueqiu/android/community/model/Card;)V

    goto/16 :goto_2

    .line 712
    :cond_2d
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    if-eqz v2, :cond_3b

    const-string v2, "stock"

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    iget-object v4, v4, Lcom/xueqiu/android/community/model/Card;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 713
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->x:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 714
    const v2, 0x7f0e0238

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v13, v3, Lcom/xueqiu/android/community/a/al;->x:Landroid/widget/LinearLayout;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    .line 21825
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 21826
    iget-object v3, v2, Lcom/xueqiu/android/community/model/Card;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 21827
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 21830
    :cond_2e
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    iget-object v2, v2, Lcom/xueqiu/android/community/model/Card;->data:Ljava/lang/String;

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 21831
    const/4 v3, 0x0

    .line 21832
    const-string v4, "quotes"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, "quotes"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 21833
    const-string v3, "quotes"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    move-object v3, v2

    .line 21835
    :cond_2f
    if-nez v3, :cond_30

    .line 21836
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 21839
    :cond_30
    const-string v2, "symbol"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "symbol"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "symbol"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 21840
    :goto_15
    const-string v2, "name"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "name"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "name"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 21841
    :goto_16
    const-string v2, "current"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "current"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "current"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 21842
    :goto_17
    const-string v2, "percentage"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "percentage"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "percentage"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 21843
    :goto_18
    const-string v2, "change"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "change"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "change"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 21844
    :goto_19
    const-string v2, "type"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "type"

    .line 21845
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "type"

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    move v12, v2

    .line 22089
    :goto_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 21848
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301e3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v13, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 21850
    new-instance v2, Lcom/xueqiu/android/community/a/ak$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8, v7}, Lcom/xueqiu/android/community/a/ak$8;-><init>(Lcom/xueqiu/android/community/a/ak;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21862
    const v2, 0x7f0e01e6

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 21863
    const v2, 0x7f0e01e7

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 21864
    const v3, 0x7f0e01e8

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 21865
    const v4, 0x7f0e01e9

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 21866
    const v5, 0x7f0e01ea

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 21867
    const v6, 0x7f0e02af

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 21869
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21871
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21873
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21875
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 21876
    const-string v4, "%s(%s%%)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_31

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v16, "+"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_31
    aput-object v11, v5, v8

    const/4 v8, 0x1

    aput-object v10, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/android/community/a/ak;->f:Lcom/xueqiu/android/base/util/ar;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v2

    .line 21881
    const v3, 0x7f0d00e2

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v3

    if-ne v2, v3, :cond_38

    .line 21882
    const v2, 0x7f020395

    .line 21888
    :goto_1b
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 21890
    invoke-static {v12}, Lcom/xueqiu/android/base/util/as;->g(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 21891
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21892
    const v2, 0x7f0703f5

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21893
    new-instance v2, Lcom/xueqiu/android/community/a/ak$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7, v12}, Lcom/xueqiu/android/community/a/ak$9;-><init>(Lcom/xueqiu/android/community/a/ak;Ljava/lang/String;I)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21909
    :goto_1c
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 21839
    :cond_32
    const-string v2, ""

    move-object v7, v2

    goto/16 :goto_15

    .line 21840
    :cond_33
    const-string v2, ""

    move-object v8, v2

    goto/16 :goto_16

    .line 21841
    :cond_34
    const-string v2, ""

    move-object v9, v2

    goto/16 :goto_17

    .line 21842
    :cond_35
    const-string v2, ""

    move-object v10, v2

    goto/16 :goto_18

    .line 21843
    :cond_36
    const-string v2, ""

    move-object v11, v2

    goto/16 :goto_19

    .line 21845
    :cond_37
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_1a

    .line 21883
    :cond_38
    const v3, 0x7f0d00e0

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v3

    if-ne v2, v3, :cond_39

    .line 21884
    const v2, 0x7f020394

    goto :goto_1b

    .line 21886
    :cond_39
    const v2, 0x7f020393

    goto :goto_1b

    .line 21907
    :cond_3a
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1c

    .line 717
    :cond_3b
    iget-object v2, v3, Lcom/xueqiu/android/community/a/al;->x:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 718
    const v2, 0x7f0e0241

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 719
    const v2, 0x7f0e0238

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private a(Landroid/widget/ImageView;Lcom/xueqiu/android/community/model/Status;)V
    .locals 4

    .prologue
    .line 1276
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v0

    .line 1277
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak;->z:Lcom/d/a/b/f;

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak;->A:Lcom/d/a/b/d;

    iget-object v3, p0, Lcom/xueqiu/android/community/a/ak;->D:Lcom/d/a/b/f/d;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/widget/ImageView;Z)V
    .locals 0

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/xueqiu/android/community/a/ak;->b(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Lcom/xueqiu/android/community/model/Card;)V
    .locals 38

    .prologue
    .line 914
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 915
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/xueqiu/android/community/model/Card;->data:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 916
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1065
    :goto_0
    return-void

    .line 919
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/xueqiu/android/community/model/Card;->data:Ljava/lang/String;

    const-class v8, Lcom/google/gson/JsonObject;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonObject;

    .line 921
    const/4 v7, 0x0

    .line 922
    const/4 v8, 0x0

    .line 924
    const-string v9, "style"

    invoke-virtual {v6, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v9, "style"

    invoke-virtual {v6, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 925
    const-string v9, "style"

    invoke-virtual {v6, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 926
    const-string v10, "color0"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "color0"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_1

    .line 927
    const-string v7, "color0"

    invoke-virtual {v9, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 929
    :cond_1
    const-string v10, "color1"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v10, "color1"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_11

    .line 930
    const-string v8, "color1"

    invoke-virtual {v9, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v8

    move-object/from16 v21, v7

    .line 934
    :goto_1
    const-string v7, "photo_domain"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "photo_domain"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "photo_domain"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v22, v7

    .line 936
    :goto_2
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v23, v7

    .line 938
    :goto_3
    const-string v7, "symbol"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "symbol"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "symbol"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v24, v7

    .line 940
    :goto_4
    const-string v7, "tag"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "tag"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "tag"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v25, v7

    .line 942
    :goto_5
    const-string v7, "market"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "market"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "market"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v26, v7

    .line 944
    :goto_6
    const-string v7, "total_gain"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "total_gain"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "total_gain"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v7

    move/from16 v27, v7

    .line 946
    :goto_7
    const-string v7, "owner_name"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "owner_name"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "owner_name"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v28, v7

    .line 948
    :goto_8
    const-string v7, "owner_profile_image_url"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "owner_profile_image_url"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "owner_profile_image_url"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v29, v7

    .line 950
    :goto_9
    const-string v7, "follower_count"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "follower_count"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "follower_count"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v30, v6

    .line 952
    :goto_a
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 31089
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 954
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0300fd

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    .line 955
    const v6, 0x7f0e027d

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 956
    const v6, 0x7f0e00a1

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 957
    const v7, 0x7f0e03ed

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 958
    const v8, 0x7f0e0396

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 959
    const v9, 0x7f0e01eb

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 960
    const v10, 0x7f0e03ef

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 961
    const v11, 0x7f0e03f0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 962
    const v12, 0x7f0e03d0

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 963
    const v13, 0x7f0e03f1

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 964
    const v14, 0x7f0e03f3

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 965
    const v15, 0x7f0e03f4

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 966
    const v16, 0x7f0e01ee

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 967
    const v17, 0x7f0e03bc

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 968
    const v18, 0x7f0e03ee

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 969
    const v19, 0x7f0e01ed

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 31197
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    .line 972
    if-nez v34, :cond_2

    .line 32197
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    .line 972
    if-nez v34, :cond_2

    .line 973
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    aput v21, v34, v35

    const/16 v21, 0x1

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    aput v20, v34, v21

    .line 974
    new-instance v20, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v21, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 975
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v21

    const/16 v35, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 976
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v21

    const/16 v35, 0x0

    aget v34, v34, v35

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 977
    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 981
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 982
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 33197
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    .line 983
    if-nez v20, :cond_3

    .line 984
    const-string v20, ","

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 985
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 988
    :cond_3
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_e

    .line 990
    const/16 v20, 0x0

    move/from16 v25, v20

    :goto_b
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v25

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 991
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v20

    check-cast v21, Ljava/lang/String;

    .line 992
    new-instance v34, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v35, -0x2

    move-object/from16 v0, v34

    move/from16 v1, v20

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 994
    if-nez v25, :cond_d

    const/16 v20, 0x0

    .line 995
    :goto_c
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v20

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 34089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 34069
    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    const v35, 0x7f030117

    const/16 v36, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v35

    move-object/from16 v2, v17

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 34070
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    add-int/lit8 v20, v25, 0x1

    move/from16 v25, v20

    goto :goto_b

    .line 934
    :cond_4
    const-string v7, ""

    move-object/from16 v22, v7

    goto/16 :goto_2

    .line 936
    :cond_5
    const-string v7, ""

    move-object/from16 v23, v7

    goto/16 :goto_3

    .line 938
    :cond_6
    const-string v7, ""

    move-object/from16 v24, v7

    goto/16 :goto_4

    .line 940
    :cond_7
    const-string v7, ""

    move-object/from16 v25, v7

    goto/16 :goto_5

    .line 942
    :cond_8
    const-string v7, ""

    move-object/from16 v26, v7

    goto/16 :goto_6

    .line 944
    :cond_9
    const/4 v7, 0x0

    move/from16 v27, v7

    goto/16 :goto_7

    .line 946
    :cond_a
    const-string v7, ""

    move-object/from16 v28, v7

    goto/16 :goto_8

    .line 948
    :cond_b
    const-string v7, ""

    move-object/from16 v29, v7

    goto/16 :goto_9

    .line 950
    :cond_c
    const-string v6, ""

    move-object/from16 v30, v6

    goto/16 :goto_a

    .line 994
    :cond_d
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    const/high16 v35, 0x40a00000    # 5.0f

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    goto/16 :goto_c

    .line 1000
    :cond_e
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    const/16 v6, 0x8

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1002
    const/16 v6, 0x8

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1006
    const-string v6, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1008
    if-eqz v6, :cond_f

    array-length v14, v6

    if-lez v14, :cond_f

    .line 1009
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v6

    add-int/lit8 v15, v15, -0x1

    aget-object v6, v6, v15

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1010
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xueqiu/android/community/a/ak;->E:Lcom/d/a/b/d;

    new-instance v17, Lcom/xueqiu/android/base/util/o;

    invoke-direct/range {v17 .. v17}, Lcom/xueqiu/android/base/util/o;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v6, v0, v15, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 1013
    :cond_f
    move/from16 v0, v27

    float-to-double v14, v0

    invoke-static {v14, v15}, Lcom/xueqiu/android/cube/a/c;->a(D)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    const v6, 0x7f070106

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1016
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    const/16 v6, 0x8

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1019
    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xueqiu/android/cube/a/c;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xueqiu/android/cube/model/Market;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Market;

    move-result-object v6

    .line 1023
    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Market;->description()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Market;->bgResId()I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1025
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xueqiu/android/base/util/as;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1026
    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    const/16 v6, 0x8

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    new-instance v6, Lcom/xueqiu/android/community/a/ak$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Lcom/xueqiu/android/community/a/ak$10;-><init>(Lcom/xueqiu/android/community/a/ak;Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    :goto_d
    new-instance v6, Lcom/xueqiu/android/community/a/ak$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Lcom/xueqiu/android/community/a/ak$11;-><init>(Lcom/xueqiu/android/community/a/ak;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    const/16 v6, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1040
    :cond_10
    const/16 v6, 0x8

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1041
    const/16 v6, 0x8

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    :cond_11
    move-object/from16 v20, v8

    move-object/from16 v21, v7

    goto/16 :goto_1

    :cond_12
    move-object/from16 v20, v8

    move-object/from16 v21, v7

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/ak;)V
    .locals 3

    .prologue
    .line 119
    .line 50098
    invoke-virtual {p0}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 50099
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 50100
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPreparedShowObj()Lcom/xueqiu/android/community/model/Status$PreparedShowObj;

    move-result-object v2

    if-nez v2, :cond_0

    .line 50101
    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/a/ak;->c(Lcom/xueqiu/android/community/model/Status;)V

    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/ak;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    .line 50214
    invoke-virtual {p0}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50215
    invoke-virtual {p0}, Lcom/xueqiu/android/community/a/ak;->notifyDataSetChanged()V

    .line 50222
    new-instance v0, Lcom/xueqiu/android/community/a/ak$31;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ak$31;-><init>(Lcom/xueqiu/android/community/a/ak;)V

    .line 50234
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/xueqiu/android/base/b/ai;->k(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 50218
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->g:Lcom/xueqiu/android/community/l;

    if-eqz v0, :cond_0

    .line 50219
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->g:Lcom/xueqiu/android/community/l;

    invoke-interface {v0, p2}, Lcom/xueqiu/android/community/l;->a(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 4

    .prologue
    .line 119
    .line 50105
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 50106
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 50107
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    const v1, 0x7f040012

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/User;Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 50236
    new-instance v1, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 50237
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 50271
    iget-object v2, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 50238
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700b3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/community/a/ak$29;

    invoke-direct {v3, p0, p1, v1}, Lcom/xueqiu/android/community/a/ak$29;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/User;Lcom/xueqiu/android/base/b/t;)V

    .line 50239
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070070

    const/4 v3, 0x0

    .line 50245
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 50251
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/a/ak$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/xueqiu/android/community/a/ak$30;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/User;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 119
    return-void

    .line 50247
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 50248
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->i(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/a/ak;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/xueqiu/android/community/a/ak;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/View;I)Landroid/view/View;
    .locals 22

    .prologue
    .line 1732
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ak;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/community/model/Status;

    .line 1733
    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/Status;->getRecommendStockCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v12

    .line 1734
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;ILcom/xueqiu/android/community/model/RecommendCard;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1736
    invoke-virtual {v12}, Lcom/xueqiu/android/community/model/RecommendCard;->getElements()Ljava/util/List;

    move-result-object v5

    .line 1737
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xueqiu/android/community/model/RecommendStock;

    .line 48089
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 47744
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03006e

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 47745
    new-instance v6, Lcom/xueqiu/android/community/a/ak$25;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5, v12}, Lcom/xueqiu/android/community/a/ak$25;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/RecommendStock;Lcom/xueqiu/android/community/model/RecommendCard;)V

    invoke-virtual {v14, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47757
    const v6, 0x7f0e01e6

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 47758
    const v6, 0x7f0e01e7

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 47759
    const v7, 0x7f0e01e8

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 47760
    const v8, 0x7f0e01e9

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 47761
    const v9, 0x7f0e01ea

    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 47762
    const v10, 0x7f0e01ed

    invoke-virtual {v14, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 47763
    const v11, 0x7f0e01eb

    invoke-virtual {v14, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 47764
    const v11, 0x7f0e01ec

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 47765
    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v17

    move/from16 v0, v17

    invoke-static {v11, v0}, Lcom/xueqiu/android/community/a/ak;->b(Landroid/widget/ImageView;Z)V

    .line 47766
    new-instance v11, Lcom/xueqiu/android/community/a/ak$26;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5, v14}, Lcom/xueqiu/android/community/a/ak$26;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/RecommendStock;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47772
    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v16, "%.2f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RecommendStock;->getCurrent()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47773
    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RecommendStock;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47774
    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47775
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v6

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RecommendStock;->getChange()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47776
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v8, "%+.2f(%+.2f)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RecommendStock;->getChange()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v9, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RecommendStock;->getPercentage()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v9, v11

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47777
    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RecommendStock;->getRecommendReason()Ljava/lang/String;

    move-result-object v6

    .line 48197
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 47777
    if-nez v6, :cond_0

    .line 47778
    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47779
    const-string v6, "\u70b9\u8bc4\uff1a"

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RecommendStock;->getRecommendReason()Ljava/lang/String;

    move-result-object v5

    const-string v7, "#ff7700"

    invoke-static {v6, v5, v7}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    :goto_1
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 47781
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1740
    :cond_1
    return-object v4
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/xueqiu/android/community/a/ak;->n:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 759
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 760
    const-string v1, "ad_id"

    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 761
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 763
    const v0, 0x7f0e02b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 764
    const v1, 0x7f0e02b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 765
    const v2, 0x7f0e02b6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 28089
    iget-object v3, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 767
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 768
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    const v4, 0x7f0800ce

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v4, v3

    .line 769
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    .line 770
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    double-to-int v4, v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 29089
    iget-object v4, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 774
    invoke-static {v3, v4, v8}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 30089
    iget-object v3, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 775
    invoke-static {v1, v3, v8}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak;->z:Lcom/d/a/b/f;

    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/Status;->getPromotionPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/a/ak;->C:Lcom/d/a/b/d;

    new-instance v4, Lcom/xueqiu/android/community/a/ak$6;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/a/ak$6;-><init>(Lcom/xueqiu/android/community/a/ak;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 784
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/Status;->getPromotionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 785
    const v0, 0x7f0e0237

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 787
    if-nez v0, :cond_0

    .line 788
    const v0, 0x7f0e023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 791
    :cond_0
    if-eqz v0, :cond_1

    .line 792
    new-instance v1, Lcom/xueqiu/android/community/a/ak$7;

    invoke-direct {v1, p0, p2}, Lcom/xueqiu/android/community/a/ak$7;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    :cond_1
    return-void
.end method

.method private static b(Landroid/widget/ImageView;Z)V
    .locals 1

    .prologue
    .line 1950
    if-eqz p1, :cond_0

    .line 1951
    const v0, 0x7f020146

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1955
    :goto_0
    return-void

    .line 1953
    :cond_0
    const v0, 0x7f020145

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private b(Landroid/widget/LinearLayout;Lcom/xueqiu/android/community/model/Card;)V
    .locals 13

    .prologue
    .line 1075
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1077
    iget-object v0, p2, Lcom/xueqiu/android/community/model/Card;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1257
    :goto_0
    return-void

    .line 1082
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p2, Lcom/xueqiu/android/community/model/Card;->data:Ljava/lang/String;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 1083
    const/4 v1, 0x0

    .line 1084
    const/4 v3, 0x0

    .line 1085
    const/4 v4, 0x0

    .line 1086
    const-string v5, "--"

    .line 1087
    const-string v2, "balance_stock_count"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1088
    const-string v1, "balance_stock_count"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    move v2, v1

    .line 1090
    :goto_2
    const-string v1, "total_gain"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1091
    const-string v1, "total_gain"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 1093
    :goto_3
    const-string v3, "balance_histories"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1094
    const-string v3, "balance_histories"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    .line 1096
    :goto_4
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1097
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "--"

    .line 1099
    :goto_5
    const/4 v5, 0x0

    .line 1100
    const-string v6, "market"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "market"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "cn"

    const-string v7, "market"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1101
    const/4 v5, 0x1

    .line 1103
    :cond_1
    const v6, 0x7f0d00a6

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v6

    .line 1105
    const-string v7, "color"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "color"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1106
    const-string v6, "color"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 35089
    :cond_2
    iget-object v7, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1109
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030204

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1111
    const v7, 0x7f0e0725

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1112
    const-string v6, "cube_id"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "cube_id"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "cube_id"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    .line 1113
    :goto_6
    new-instance v0, Lcom/xueqiu/android/community/a/ak$13;

    invoke-direct {v0, p0, v6, v7}, Lcom/xueqiu/android/community/a/ak$13;-><init>(Lcom/xueqiu/android/community/a/ak;J)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    const v0, 0x7f0e00a1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1128
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    const v0, 0x7f0e0726

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1132
    if-eqz v1, :cond_d

    .line 1133
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_b

    .line 1134
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1135
    const v4, 0x7f0d011d

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1146
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    :goto_8
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 1152
    const/4 v0, 0x0

    move v7, v0

    :goto_9
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_18

    .line 1153
    invoke-virtual {v3, v7}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 1154
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 36089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1155
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030202

    const/4 v4, 0x0

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1157
    if-eqz v5, :cond_e

    .line 1158
    const v0, 0x7f0e043b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    :goto_a
    const v0, 0x7f0e0723

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 1163
    const-string v0, "target_weight"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "prev_weight_adjusted"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1164
    const-string v0, "target_weight"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    move v4, v0

    .line 1165
    :goto_b
    const-string v0, "prev_weight_adjusted"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    move v6, v0

    .line 1167
    :goto_c
    sub-float v0, v4, v6

    const/4 v10, 0x0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_12

    .line 1168
    const v0, 0x7f070052

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1170
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1171
    const v0, 0x7f02014a

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1184
    :goto_d
    const v0, 0x7f0e01e7

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1185
    const-string v10, "%.0f%% --> %.0f%%"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v11, v12

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    :cond_3
    const-string v0, "price"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "price"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1189
    const v0, 0x7f0e0724

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0704c6

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "price"

    invoke-virtual {v8, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    :goto_e
    const-string v0, "stock_symbol"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "stock_name"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1196
    const-string v0, "stock_symbol"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "--"

    move-object v4, v0

    .line 1197
    :goto_f
    const-string v0, "stock_name"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "--"

    move-object v6, v0

    .line 1198
    :goto_10
    const v0, 0x7f0e0437

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    const v0, 0x7f0e0437

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1200
    const v0, 0x7f0e0438

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    const v0, 0x7f0e0438

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1203
    const v0, 0x7f0e043b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v6, Lcom/xueqiu/android/community/a/ak$14;

    invoke-direct {v6, p0, v1, v4}, Lcom/xueqiu/android/community/a/ak$14;-><init>(Lcom/xueqiu/android/community/a/ak;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1219
    :cond_4
    const/4 v0, 0x2

    if-gt v2, v0, :cond_17

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_17

    .line 1220
    const v0, 0x7f0e03b0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    :goto_11
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1227
    new-instance v0, Lcom/xueqiu/android/community/a/ak$15;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ak$15;-><init>(Lcom/xueqiu/android/community/a/ak;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_9

    .line 1088
    :cond_5
    const-string v1, "balance_stock_count"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto/16 :goto_1

    .line 1091
    :cond_6
    const-string v1, "total_gain"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_3

    .line 1094
    :cond_7
    const-string v3, "balance_histories"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    goto/16 :goto_4

    .line 1097
    :cond_8
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 1112
    :cond_9
    const-wide/16 v6, 0x0

    goto/16 :goto_6

    .line 1137
    :cond_a
    const v4, 0x7f0d011c

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 1140
    :cond_b
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1141
    const v4, 0x7f0d0119

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 1143
    :cond_c
    const v4, 0x7f0d0118

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 1148
    :cond_d
    const-string v1, " --%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1160
    :cond_e
    const v0, 0x7f0e043b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 1164
    :cond_f
    const-string v0, "target_weight"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    move v4, v0

    goto/16 :goto_b

    .line 1165
    :cond_10
    const-string v0, "prev_weight_adjusted"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    move v6, v0

    goto/16 :goto_c

    .line 1173
    :cond_11
    const v0, 0x7f020149

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 1176
    :cond_12
    const v0, 0x7f070398

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1178
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1179
    const v0, 0x7f0203c1

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 1181
    :cond_13
    const v0, 0x7f0203c0

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 1192
    :cond_14
    const v0, 0x7f0e0724

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0704c6

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "--"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 1196
    :cond_15
    const-string v0, "stock_symbol"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_f

    .line 1197
    :cond_16
    const-string v0, "stock_name"

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_10

    .line 1222
    :cond_17
    const v0, 0x7f0e03b0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11

    .line 37089
    :cond_18
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1246
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030203

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1248
    const v0, 0x7f0e06b8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1250
    const v1, 0x7f07048d

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "m"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    const/4 v1, 0x2

    if-gt v2, v1, :cond_19

    .line 1253
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1255
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1a
    move-object v4, v5

    goto/16 :goto_5

    :cond_1b
    move-object v3, v4

    goto/16 :goto_4

    :cond_1c
    move-object v1, v3

    goto/16 :goto_3

    :cond_1d
    move v2, v1

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 119
    .line 50168
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 50110
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0703ae

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f0703af

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const v3, 0x7f0703ad

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 50111
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v2

    .line 50112
    if-ne v2, v4, :cond_0

    .line 50113
    const v3, 0x7f070076

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    .line 50115
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 50169
    iget-object v3, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 50115
    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/xueqiu/android/community/a/ak$17;

    invoke-direct {v3, p0, p1, v2}, Lcom/xueqiu/android/community/a/ak$17;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;I)V

    .line 50116
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 50165
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 50166
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 119
    return-void
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1362
    :cond_0
    const v0, 0x7f020489

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1363
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->p:Ljava/lang/ref/WeakReference;

    .line 1365
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/a/ak;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/xueqiu/android/community/a/ak;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/view/View;I)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 1815
    invoke-virtual {p0, p2}, Lcom/xueqiu/android/community/a/ak;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 1816
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRecommendCubeCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v4

    .line 1817
    invoke-direct {p0, p1, p2, v4}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;ILcom/xueqiu/android/community/model/RecommendCard;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1818
    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/RecommendCard;->getElements()Ljava/util/List;

    move-result-object v5

    move v2, v3

    .line 1820
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 49089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1821
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0300fc

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1822
    new-instance v7, Lcom/xueqiu/android/cube/a/c;

    invoke-direct {v7}, Lcom/xueqiu/android/cube/a/c;-><init>()V

    .line 50089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1823
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v8, Lcom/xueqiu/android/community/a/ak$28;

    invoke-direct {v8, p0, v7, v4}, Lcom/xueqiu/android/community/a/ak$28;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/cube/a/c;Lcom/xueqiu/android/community/model/RecommendCard;)V

    iget-object v9, p0, Lcom/xueqiu/android/community/a/ak;->A:Lcom/d/a/b/d;

    invoke-virtual {v7, v6, v1, v8, v9}, Lcom/xueqiu/android/cube/a/c;->a(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/xueqiu/android/cube/a/b;Lcom/d/a/b/d;)Lcom/xueqiu/android/cube/a/c;

    .line 1860
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/Cube;

    sget-object v8, Lcom/xueqiu/android/cube/model/CubeCalGainType;->TOTAL:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    invoke-virtual {v7, v1, v8, v3, v3}, Lcom/xueqiu/android/cube/a/c;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/CubeCalGainType;ZZ)V

    .line 1861
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50090
    new-instance v1, Landroid/view/View;

    .line 50096
    iget-object v6, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 50090
    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50091
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50092
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50097
    iget-object v6, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 50093
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v7, v10, [I

    const v8, 0x7f01012e

    aput v8, v7, v3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 50094
    const v7, 0x7f0d012a

    invoke-virtual {v6, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1862
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1820
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1864
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 4

    .prologue
    .line 50170
    const-string v0, "\u662f\u5426\u786e\u5b9a\u5220\u9664?"

    .line 50171
    const-string v1, "UNANSWERED"

    invoke-static {p1}, Lcom/xueqiu/android/base/util/ap;->b(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50172
    const-string v0, "\u5220\u9664\u540e\u8d39\u7528\u4e0d\u9000\u8fd8\uff0c\u5c06\u8f6c\u7ed9\u88ab\u63d0\u95ee\u8005"

    .line 50174
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    const v3, 0x7f070409

    .line 50175
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    const v3, 0x7f070070

    .line 50176
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    const v3, 0x7f0700b1

    .line 50177
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/a/ak$18;

    invoke-direct {v3, p0, p1}, Lcom/xueqiu/android/community/a/ak$18;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 50185
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 119
    return-void
.end method

.method private c(Lcom/xueqiu/android/community/model/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1329
    new-instance v1, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;

    invoke-direct {v1}, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;-><init>()V

    .line 1330
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->createDateLabel:Ljava/lang/String;

    .line 1332
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getTopicDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 1333
    :goto_0
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->isAnswer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1334
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->isRefused()Z

    move-result v2

    .line 38089
    iget-object v3, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1334
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/ap;->a(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39089
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1336
    invoke-static {v0, v2, v4}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->textFromHtml:Landroid/text/Spanned;

    .line 1338
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getTopicTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1339
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getTopicTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->titleFromHtml:Landroid/text/Spanned;

    .line 40089
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1343
    const v2, 0x7f070399

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getSource()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->sourceLabel:Ljava/lang/String;

    .line 1345
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1346
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/a/ak;->c(Lcom/xueqiu/android/community/model/Status;)V

    .line 1349
    :cond_2
    invoke-virtual {p1, v1}, Lcom/xueqiu/android/community/model/Status;->setPreparedShowObj(Lcom/xueqiu/android/community/model/Status$PreparedShowObj;)V

    .line 1350
    return-void

    .line 1332
    :cond_3
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getTopicDesc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1340
    :cond_4
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1341
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/community/model/Status$PreparedShowObj;->titleFromHtml:Landroid/text/Spanned;

    goto :goto_1
.end method

.method static synthetic d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1370
    :cond_0
    const v0, 0x7f020484

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1371
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ak;->q:Ljava/lang/ref/WeakReference;

    .line 1373
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private d(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1353
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    .line 1354
    if-nez v0, :cond_0

    .line 1355
    const-string v0, ""

    .line 1357
    :goto_0
    return-object v0

    .line 41089
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1357
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 4

    .prologue
    .line 119
    .line 50187
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 50188
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/a/ak$19;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/community/a/ak$19;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 119
    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak;->g:Lcom/xueqiu/android/community/l;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/community/model/Status;)V
    .locals 4

    .prologue
    .line 1447
    new-instance v1, Landroid/content/Intent;

    .line 42089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1447
    const-class v2, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1448
    const-string v0, "extra_write_type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1449
    const-string v0, "extra_status_id"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1450
    const-string v0, "extra_reply_somebody"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    const-string v0, "extra_paid_to_user"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1452
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1453
    const-string v2, "extra_paid_mention"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43089
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1455
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1456
    return-void
.end method

.method public final b(Lcom/xueqiu/android/community/model/Status;)V
    .locals 3

    .prologue
    .line 1459
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    const-class v2, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1460
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1461
    const-string v1, "extra_position_to_comment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1462
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1463
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v2, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 726
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 730
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/ak;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 732
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22667
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/ak;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 22668
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRecommendUserCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v6

    .line 22669
    invoke-direct {p0, v1, p1, v6}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;ILcom/xueqiu/android/community/model/RecommendCard;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 22671
    if-eqz v6, :cond_2

    .line 22672
    new-instance v7, Lcom/xueqiu/android/community/a/bd;

    .line 23089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 22672
    invoke-direct {v7, v1}, Lcom/xueqiu/android/community/a/bd;-><init>(Landroid/content/Context;)V

    .line 22673
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/RecommendCard;->getElements()Ljava/util/List;

    move-result-object v1

    .line 24043
    iput-object v1, v7, Lcom/xueqiu/android/community/a/bd;->a:Ljava/util/List;

    .line 22675
    invoke-virtual {v7}, Lcom/xueqiu/android/community/a/bd;->getCount()I

    move-result v1

    .line 22676
    if-le v1, v2, :cond_7

    move v3, v2

    :goto_0
    move v4, v5

    .line 22679
    :goto_1
    if-ge v4, v3, :cond_2

    .line 22680
    const/4 v1, 0x0

    invoke-virtual {v7, v4, v1, v0}, Lcom/xueqiu/android/community/a/bd;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 25039
    iget-object v1, v7, Lcom/xueqiu/android/community/a/bd;->a:Ljava/util/List;

    .line 22683
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/User;

    .line 22685
    new-instance v2, Lcom/xueqiu/android/community/a/ak$22;

    invoke-direct {v2, p0, v1, v6}, Lcom/xueqiu/android/community/a/ak$22;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/User;Lcom/xueqiu/android/community/model/RecommendCard;)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22698
    const v2, 0x7f0e020a

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 22701
    new-instance v9, Lcom/xueqiu/android/community/a/ak$24;

    invoke-direct {v9, p0, v1, v2, v6}, Lcom/xueqiu/android/community/a/ak$24;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/User;Landroid/widget/ImageView;Lcom/xueqiu/android/community/model/RecommendCard;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22711
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 22714
    add-int/lit8 v1, v3, -0x1

    if-ge v4, v1, :cond_0

    .line 22715
    new-instance v1, Landroid/view/View;

    .line 25089
    iget-object v2, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 22715
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22716
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 22719
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26089
    iget-object v2, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 22721
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v8, v10, [I

    const v9, 0x7f01012e

    aput v9, v8, v5

    invoke-virtual {v2, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 27089
    iget-object v8, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 22722
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22724
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 22679
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 736
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 737
    invoke-direct {p0, v1, p1}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 755
    :cond_2
    :goto_2
    return-object v0

    .line 740
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "STOCK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 741
    invoke-direct {p0, v1, p1}, Lcom/xueqiu/android/community/a/ak;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 744
    :cond_4
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CUBE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 745
    invoke-direct {p0, v1, p1}, Lcom/xueqiu/android/community/a/ak;->c(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 748
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V

    move-object v0, v1

    .line 749
    check-cast v0, Landroid/view/ViewGroup;

    .line 750
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/xueqiu/android/community/a/ak;->h:Z

    if-eqz v2, :cond_6

    .line 751
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    move-object v0, v1

    .line 755
    goto :goto_2

    .line 753
    :cond_6
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v3, v1

    goto/16 :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 1878
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/ak;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 1879
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
