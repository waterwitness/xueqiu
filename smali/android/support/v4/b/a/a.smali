.class public final Landroid/support/v4/b/a/a;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# static fields
.field static final a:Landroid/support/v4/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 216
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 217
    new-instance v0, Landroid/support/v4/b/a/i;

    invoke-direct {v0}, Landroid/support/v4/b/a/i;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    .line 231
    :goto_0
    return-void

    .line 218
    :cond_0
    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 219
    new-instance v0, Landroid/support/v4/b/a/h;

    invoke-direct {v0}, Landroid/support/v4/b/a/h;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    goto :goto_0

    .line 220
    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 221
    new-instance v0, Landroid/support/v4/b/a/g;

    invoke-direct {v0}, Landroid/support/v4/b/a/g;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    goto :goto_0

    .line 222
    :cond_2
    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 223
    new-instance v0, Landroid/support/v4/b/a/f;

    invoke-direct {v0}, Landroid/support/v4/b/a/f;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    goto :goto_0

    .line 224
    :cond_3
    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 225
    new-instance v0, Landroid/support/v4/b/a/e;

    invoke-direct {v0}, Landroid/support/v4/b/a/e;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    goto :goto_0

    .line 226
    :cond_4
    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 227
    new-instance v0, Landroid/support/v4/b/a/d;

    invoke-direct {v0}, Landroid/support/v4/b/a/d;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    goto :goto_0

    .line 229
    :cond_5
    new-instance v0, Landroid/support/v4/b/a/b;

    invoke-direct {v0}, Landroid/support/v4/b/a/b;-><init>()V

    sput-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 375
    sget-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/b/a/c;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 376
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 273
    sget-object v0, Landroid/support/v4/b/a/a;->a:Landroid/support/v4/b/a/c;

    invoke-interface {v0, p0}, Landroid/support/v4/b/a/c;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
