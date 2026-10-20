.class public Lorg/yaml/snakeyaml/LoaderOptions;
.super Ljava/lang/Object;
.source "LoaderOptions.java"


# instance fields
.field private allowDuplicateKeys:Z

.field private allowRecursiveKeys:Z

.field private enumCaseSensitive:Z

.field private maxAliasesForCollections:I

.field private processComments:Z

.field private wrappedToRootException:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowDuplicateKeys:Z

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->wrappedToRootException:Z

    .line 22
    const/16 v2, 0x32

    iput v2, p0, Lorg/yaml/snakeyaml/LoaderOptions;->maxAliasesForCollections:I

    .line 23
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowRecursiveKeys:Z

    .line 24
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->processComments:Z

    .line 25
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->enumCaseSensitive:Z

    return-void
.end method


# virtual methods
.method public getAllowRecursiveKeys()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowRecursiveKeys:Z

    return v0
.end method

.method public getMaxAliasesForCollections()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->maxAliasesForCollections:I

    return v0
.end method

.method public isAllowDuplicateKeys()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowDuplicateKeys:Z

    return v0
.end method

.method public isEnumCaseSensitive()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->enumCaseSensitive:Z

    return v0
.end method

.method public isProcessComments()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->processComments:Z

    return v0
.end method

.method public isWrappedToRootException()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->wrappedToRootException:Z

    return v0
.end method

.method public setAllowDuplicateKeys(Z)V
    .locals 0
    .param p1, "allowDuplicateKeys"    # Z

    .line 47
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowDuplicateKeys:Z

    .line 48
    return-void
.end method

.method public setAllowRecursiveKeys(Z)V
    .locals 0
    .param p1, "allowRecursiveKeys"    # Z

    .line 84
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowRecursiveKeys:Z

    .line 85
    return-void
.end method

.method public setEnumCaseSensitive(Z)V
    .locals 0
    .param p1, "enumCaseSensitive"    # Z

    .line 115
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->enumCaseSensitive:Z

    .line 116
    return-void
.end method

.method public setMaxAliasesForCollections(I)V
    .locals 0
    .param p1, "maxAliasesForCollections"    # I

    .line 74
    iput p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->maxAliasesForCollections:I

    .line 75
    return-void
.end method

.method public setProcessComments(Z)V
    .locals 0
    .param p1, "processComments"    # Z

    .line 97
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->processComments:Z

    .line 98
    return-void
.end method

.method public setWrappedToRootException(Z)V
    .locals 0
    .param p1, "wrappedToRootException"    # Z

    .line 62
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->wrappedToRootException:Z

    .line 63
    return-void
.end method
