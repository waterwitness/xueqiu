.class public final Landroid/support/v4/view/a/r;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Landroid/support/v4/view/a/r;->a:Ljava/lang/Object;

    .line 429
    return-void
.end method

.method public static a(II)Landroid/support/v4/view/a/r;
    .locals 2

    .prologue
    .line 423
    new-instance v0, Landroid/support/v4/view/a/r;

    invoke-static {}, Landroid/support/v4/view/a/f;->n()Landroid/support/v4/view/a/k;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/support/v4/view/a/k;->b(II)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/r;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
