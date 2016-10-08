.class public Lcom/flurry/sdk/jv;
.super Lcom/flurry/sdk/ka;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/flurry/sdk/jv$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "com.flurry.android.sdk.ActivityLifecycleEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ka;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
