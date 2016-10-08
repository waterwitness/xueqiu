.class final Lcom/flurry/android/FlurryAgent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryAgent;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/lg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Lcom/flurry/sdk/lg;

    invoke-virtual {p0, p1}, Lcom/flurry/android/FlurryAgent$1;->a(Lcom/flurry/sdk/lg;)V

    return-void
.end method

.method public final a(Lcom/flurry/sdk/lg;)V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/FlurryAgent$1$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/FlurryAgent$1$1;-><init>(Lcom/flurry/android/FlurryAgent$1;Lcom/flurry/sdk/lg;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
