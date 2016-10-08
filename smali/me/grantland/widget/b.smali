.class final Lme/grantland/widget/b;
.super Ljava/lang/Object;
.source "AutofitHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lme/grantland/widget/a;


# direct methods
.method private constructor <init>(Lme/grantland/widget/a;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lme/grantland/widget/b;->a:Lme/grantland/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/grantland/widget/a;B)V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lme/grantland/widget/b;-><init>(Lme/grantland/widget/a;)V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lme/grantland/widget/b;->a:Lme/grantland/widget/a;

    .line 1031
    invoke-virtual {v0}, Lme/grantland/widget/a;->a()V

    .line 540
    return-void
.end method
