.class Lcom/flurry/sdk/ik$a$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ik$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/ik;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ik$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ik$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/flurry/sdk/ik$a$1;->a:Lcom/flurry/sdk/ik$a;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
