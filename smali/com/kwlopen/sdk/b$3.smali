.class final Lcom/kwlopen/sdk/b$3;
.super Ljava/lang/Object;
.source "KwlOpenCordovaPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/b;->a(IILandroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/kwlopen/sdk/b;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/b;I)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/kwlopen/sdk/b$3;->b:Lcom/kwlopen/sdk/b;

    iput p2, p0, Lcom/kwlopen/sdk/b$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/kwlopen/sdk/b$3;->b:Lcom/kwlopen/sdk/b;

    invoke-static {v0}, Lcom/kwlopen/sdk/b;->a(Lcom/kwlopen/sdk/b;)Lorg/apache/cordova/b;

    move-result-object v0

    iget v1, p0, Lcom/kwlopen/sdk/b$3;->a:I

    invoke-virtual {v0, v1}, Lorg/apache/cordova/b;->a(I)V

    .line 242
    return-void
.end method
