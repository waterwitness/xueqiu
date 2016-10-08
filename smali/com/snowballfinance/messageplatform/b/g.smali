.class final Lcom/snowballfinance/messageplatform/b/g;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field public a:Ljava/lang/StringBuffer;

.field public b:I

.field final synthetic c:Lcom/snowballfinance/messageplatform/b/f;


# direct methods
.method private constructor <init>(Lcom/snowballfinance/messageplatform/b/f;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/b/g;->c:Lcom/snowballfinance/messageplatform/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/snowballfinance/messageplatform/b/g;->a:Ljava/lang/StringBuffer;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/snowballfinance/messageplatform/b/g;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/snowballfinance/messageplatform/b/f;B)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/snowballfinance/messageplatform/b/g;-><init>(Lcom/snowballfinance/messageplatform/b/f;)V

    return-void
.end method
