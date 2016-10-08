.class public final Landroid/support/v4/view/aa;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/support/v4/view/ae;

    invoke-direct {v0}, Landroid/support/v4/view/ae;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/ab;

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 59
    new-instance v0, Landroid/support/v4/view/ad;

    invoke-direct {v0}, Landroid/support/v4/view/ad;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/ab;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Landroid/support/v4/view/ac;

    invoke-direct {v0}, Landroid/support/v4/view/ac;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/ab;

    goto :goto_0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/support/v4/view/aj;)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/ab;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ab;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/aj;)V

    .line 80
    return-void
.end method
