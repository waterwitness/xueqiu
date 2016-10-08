.class public final Lcom/snowballfinance/message/io/c/f;
.super Ljava/lang/Object;
.source "FragmentEvent.java"


# instance fields
.field a:Lcom/snowballfinance/message/io/c/c;

.field b:Lcom/snowballfinance/message/io/b;


# direct methods
.method public constructor <init>(Lcom/snowballfinance/message/io/c/c;Lcom/snowballfinance/message/io/b;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    .line 22
    iput-object p2, p0, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    .line 23
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string v0, "%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/f;->a:Lcom/snowballfinance/message/io/c/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/f;->b:Lcom/snowballfinance/message/io/b;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
