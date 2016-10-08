.class final Landroid/support/v4/view/a/v;
.super Landroid/support/v4/view/a/x;
.source "AccessibilityNodeProviderCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/view/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/a/t;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/support/v4/view/a/v$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/a/v$1;-><init>(Landroid/support/v4/view/a/v;Landroid/support/v4/view/a/t;)V

    .line 1038
    new-instance v1, Landroid/support/v4/view/a/y$1;

    invoke-direct {v1, v0}, Landroid/support/v4/view/a/y$1;-><init>(Landroid/support/v4/view/a/z;)V

    .line 47
    return-object v1
.end method
